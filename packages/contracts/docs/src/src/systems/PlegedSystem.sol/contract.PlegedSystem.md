# PlegedSystem
**Inherits:**
System


## Functions
### pleged

质押


```solidity
function pleged(uint256 _amount) public;
```

### reinvest

复投


```solidity
function reinvest() public;
```

### _userLeveUpdate


```solidity
function _userLeveUpdate(address _user, uint256 _amount) internal;
```

### _userParentLeveUpdate


```solidity
function _userParentLeveUpdate(address _user) internal;
```

### _updateLevel


```solidity
function _updateLevel(uint256 amount, uint256 level, uint256 small, address _user) internal;
```

### _small


```solidity
function _small(address _user) internal returns (uint256);
```

### _directPromotionIncome


```solidity
function _directPromotionIncome(address _user, uint256 _amount) internal;
```

### _levelIncome


```solidity
function _levelIncome(address _user, uint256 _amount) internal;
```

### _gradedIncome


```solidity
function _gradedIncome(address _user, uint256 _amount) internal;
```

### _getPayToken


```solidity
function _getPayToken() internal view returns (address);
```

### claim

提取收益


```solidity
function claim() public;
```

### claimBase

提取本金


```solidity
function claimBase() public;
```

### getIncome

查询静态收益


```solidity
function getIncome() public view returns (uint256);
```

### queryIncome

查询静态收益


```solidity
function queryIncome(address _user) internal view returns (uint256);
```

