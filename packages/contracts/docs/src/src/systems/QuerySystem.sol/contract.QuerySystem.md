# QuerySystem
**Inherits:**
System


## Functions
### getUserByAddress

query user info


```solidity
function getUserByAddress(address _user)
    public
    view
    returns (UserData memory user, UserExData memory user_ex, RelationData memory relation_pub, uint256 total);
```

### team

total 总业绩  small  小区业绩


```solidity
function team() public view returns (uint256 total, uint256 small);
```

### teamLog

用户记录


```solidity
function teamLog() public view returns (UserData[] memory users);
```

