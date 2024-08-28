# ERC314
**Inherits:**
[IEERC314](/src/X314.sol/interface.IEERC314.md)


## State Variables
### _balances

```solidity
mapping(address account => uint256) private _balances;
```


### _lastTxTime

```solidity
mapping(address account => uint256) private _lastTxTime;
```


### lastTransaction

```solidity
mapping(address account => uint32) private lastTransaction;
```


### _totalSupply

```solidity
uint256 private _totalSupply;
```


### _maxWallet

```solidity
uint256 public _maxWallet;
```


### blockToUnlockLiquidity

```solidity
uint32 public blockToUnlockLiquidity;
```


### _name

```solidity
string private _name;
```


### _symbol

```solidity
string private _symbol;
```


### owner

```solidity
address public owner;
```


### liquidityProvider

```solidity
address public liquidityProvider;
```


### tradingEnable

```solidity
bool public tradingEnable;
```


### liquidityAdded

```solidity
bool public liquidityAdded;
```


### maxWalletEnable

```solidity
bool public maxWalletEnable;
```


### feeReceiver

```solidity
address payable public feeReceiver;
```


### lpBurnEnabled

```solidity
bool public lpBurnEnabled = true;
```


### lpBurnFrequency

```solidity
uint256 public lpBurnFrequency = 3600 seconds;
```


### lastLpBurnTime

```solidity
uint256 public lastLpBurnTime;
```


### percentForLPBurn

```solidity
uint256 public percentForLPBurn = 33;
```


## Functions
### onlyOwner


```solidity
modifier onlyOwner();
```

### onlyLiquidityProvider


```solidity
modifier onlyLiquidityProvider();
```

### constructor


```solidity
constructor(string memory name_, string memory symbol_, uint256 totalSupply_);
```

### name


```solidity
function name() public view virtual returns (string memory);
```

### symbol


```solidity
function symbol() public view virtual returns (string memory);
```

### decimals


```solidity
function decimals() public view virtual returns (uint8);
```

### totalSupply


```solidity
function totalSupply() public view virtual returns (uint256);
```

### balanceOf


```solidity
function balanceOf(address account) public view virtual returns (uint256);
```

### transfer


```solidity
function transfer(address to, uint256 value) public virtual returns (bool);
```

### _transfer


```solidity
function _transfer(address from, address to, uint256 value) internal virtual;
```

### getReserves


```solidity
function getReserves() public view returns (uint256, uint256);
```

### enableTrading


```solidity
function enableTrading(bool _tradingEnable) external onlyOwner;
```

### enableMaxWallet


```solidity
function enableMaxWallet(bool _maxWalletEnable) external onlyOwner;
```

### setMaxWallet


```solidity
function setMaxWallet(uint256 _maxWallet_) external onlyOwner;
```

### renounceOwnership


```solidity
function renounceOwnership() external onlyOwner;
```

### addLiquidity


```solidity
function addLiquidity(uint32 _blockToUnlockLiquidity) public payable onlyOwner;
```

### removeLiquidity


```solidity
function removeLiquidity() public onlyLiquidityProvider;
```

### extendLiquidityLock


```solidity
function extendLiquidityLock(uint32 _blockToUnlockLiquidity) public onlyLiquidityProvider;
```

### getAmountOut


```solidity
function getAmountOut(uint256 value, bool _buy) public view returns (uint256);
```

### buy


```solidity
function buy() internal;
```

### sell


```solidity
function sell(uint256 sell_amount) internal;
```

### setAutoLPBurnSettings


```solidity
function setAutoLPBurnSettings(uint256 _frequencyInSeconds, uint256 _percent, bool _Enabled) external onlyOwner;
```

### autoBurnLiquidityPairTokens


```solidity
function autoBurnLiquidityPairTokens() internal returns (bool);
```

### receive


```solidity
receive() external payable;
```

## Events
### AutoNukeLP

```solidity
event AutoNukeLP(uint256 lpBalance, uint256 burnAmount, uint256 time);
```

