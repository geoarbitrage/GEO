// SPDX-License-Identifier: MIT
pragma solidity >=0.8.21;
pragma abicoder v2;
import { console } from "forge-std/console.sol";
import { Relation, User, UserEx, BindRoot, Factory, PayToken, USDC, Router, Counter,  RewardLog, PoolAddressesProvider} from "../codegen/index.sol";
import { RewardTypes } from "../codegen/common.sol";
import { SafeMath } from "../lib/SafeMath.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import '@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol';
import { IPoolAddressesProvider } from "@aave/protocol-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import { IPool } from "@aave/protocol-v3/contracts/interfaces/IPool.sol";

contract FlashLoanSystem is System {
  using SafeMath for uint256;

    function requestFlashLoan(uint256 _amount) public {
        IPool LENDING_POOL = IPool(IPoolAddressesProvider(address(PoolAddressesProvider.get())).getPool());
        bytes memory data = ""; // This could be populated with custom data
        uint16 interestRateMode = 0; // Interest rate mode, 0 for no specific interest rate mode

        require(!UserEx.getIsParticipated(_msgSender()), "only one");
        require(_amount <= 10*10**18, "10 DAI");
        require(_amount > 0, "is zero");

        IERC20(PayToken.get()).transferFrom(_msgSender(),address(this), _amount);

        bytes32 randomHash = keccak256(abi.encodePacked(block.timestamp, block.difficulty, _msgSender()));
        uint256 randomNumber = uint256(randomHash) % (201 * 10**18) + 100 * 10**18;
        uint256 amount = randomNumber;

        
        LENDING_POOL.flashLoanSimple(
            address(this),
            address(PayToken.get()),
            amount,
            data,
            interestRateMode
        );

        Counter.set(Counter.get()+1);
        uint256 id = Counter.get();
        RewardLog.setUser(id, _msgSender());
        RewardLog.setFrom(id, address(this));
        RewardLog.setValue(id, (_amount / 10000) * ((uint256(randomHash) % 11) + 5));
        RewardLog.setKind(id, RewardTypes.FlashIncome);
        RewardLog.setTime(id, block.timestamp);
        console.log((_amount / 10000) * ((uint256(randomHash) % 11) + 5));
        IERC20(PayToken.get()).transfer(_msgSender(), ((_amount / 10000) * ((uint256(randomHash) % 11) + 5)) + _amount);
        UserEx.setIsParticipated(_msgSender(), true);

    }


    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external returns (bool) {
        IPool LENDING_POOL = IPool(IPoolAddressesProvider(address(PoolAddressesProvider.get())).getPool());
        require(initiator == address(this), "invalid initiator");

        uint randomHash = uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty, amount)));
        uint integerInRange = (randomHash % 3) + 3;
        uint256 daiAmount = integerInRange*10e18;
      
        IERC20(PayToken.get()).approve(Router.get(), daiAmount);

        {
            ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
                tokenIn: PayToken.get(),
                tokenOut: USDC.get(),
                fee: 100,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: daiAmount,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            });

            uint256 usdcAmountOut = ISwapRouter(Router.get()).exactInputSingle(params);
            
            ISwapRouter.ExactInputSingleParams memory params2 = ISwapRouter.ExactInputSingleParams({
                tokenIn: USDC.get(),
                tokenOut: PayToken.get(),
                fee: 100,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: usdcAmountOut,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            });

            IERC20(USDC.get()).approve(Router.get(), usdcAmountOut);

            ISwapRouter(Router.get()).exactInputSingle(params2);

        }

        uint256 amountOwing = amount + premium;
        IERC20(asset).approve(address(LENDING_POOL), amountOwing);

        return true;
    }
  
}
