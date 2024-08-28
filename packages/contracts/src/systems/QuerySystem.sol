// SPDX-License-Identifier: MIT
pragma solidity >=0.8.21;

import { console } from "forge-std/console.sol";
import {SystemSwitch} from "@latticexyz/world-modules/src/utils/SystemSwitch.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {
            Relation,  User, PayToken,  UserEx,  RewardLog, BindRoot, Counter, UserData, UserExData, RelationData, Total, Pledging, PlegedLog, IncomeRate, ParentIncome
        } from "../codegen/index.sol";
import { RewardTypes, PlegedStatus } from "../codegen/common.sol";
import { SafeMath } from "../lib/SafeMath.sol";
import { Math } from "../lib/Math.sol";

contract QuerySystem is System {

    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    /// @notice query user info
    function getUserByAddress(address _user) public view returns(UserData  memory user, UserExData  memory user_ex, RelationData memory relation_pub, uint256 total){
        UserData  memory user = User.get(_user);
        UserExData  memory user_ex = UserEx.get(_user);
        RelationData memory relation_pub = Relation.get(_user);
        uint256 total = Total.get();
        return (user, user_ex, relation_pub, total);
    }

    /// @notice total 总业绩  small  小区业绩
    function team() public view returns(uint256 total, uint256 small) {
      uint256 teamTotal =  Pledging.getTotal(_msgSender()); 
      uint256 total = teamTotal;
      return (teamTotal, total);
    }

    /// @notice 用户记录
    function teamLog() public view returns(UserData[]  memory users) {
        address[] memory userSon = Relation.getSon(_msgSender());
        UserData[]  memory users = new UserData[](userSon.length);
      for (uint256 m=0; m < userSon.length; m++) {
            
           UserData  memory user = User.get(userSon[m]);
           users[m] = user;
      }
      return users;
    }

    /// @notice 查询静态收益
  function getIncomeNew() public view returns(uint256) {
      uint256[] memory orders = UserEx.getOrders(_msgSender());
      uint256 income = 0;
      for (uint256 i=0; i < orders.length; i++) {
          PlegedStatus status = PlegedLog.getStatus(orders[i]);
          if (status == PlegedStatus.Pendding) {
             uint256 diff = block.number - PlegedLog.getHeight(orders[i]);
            uint256 baseAmount = PlegedLog.getPay(orders[i]);
            income = income + (baseAmount * diff * IncomeRate.get() / 10**18);
             
          }
      }
      return income + User.getPledgeIncome(_msgSender());
  }

   /// @notice 查询服务奖
  function getServerReward() public view returns(uint256) {
      return ParentIncome.getIncome(_msgSender());
  }

     /// @notice 查询分红奖
  function getLevelRedReward() public view returns(uint256) {
      return ParentIncome.getLevelRedIncome(_msgSender());
  }
  

}
