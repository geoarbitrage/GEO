# IQuerySystem
**Author:**
MUD (https://mud.dev) by Lattice (https://lattice.xyz)

*This interface is automatically generated from the corresponding system contract. Do not edit manually.*


## Functions
### getUserByAddress


```solidity
function getUserByAddress(address _user)
    external
    view
    returns (UserData memory user, UserExData memory user_ex, RelationData memory relation_pub, uint256 total);
```

### team


```solidity
function team() external view returns (uint256 total, uint256 small);
```

### teamLog


```solidity
function teamLog() external view returns (UserData[] memory users);
```

