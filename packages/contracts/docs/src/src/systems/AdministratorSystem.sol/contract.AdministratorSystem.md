# AdministratorSystem
**Inherits:**
System


## Functions
### onlyAdmin


```solidity
modifier onlyAdmin();
```

### setAdmin

first set admin


```solidity
function setAdmin(address _newAdmin) public;
```

### changeAdmin

change admin


```solidity
function changeAdmin(address _newAdmin) public onlyAdmin;
```

### setPayToken


```solidity
function setPayToken(address _payToken) public onlyAdmin;
```

### setBindRoot

set bind address of root


```solidity
function setBindRoot(address _root) public onlyAdmin;
```

### tokenManger


```solidity
function tokenManger(address _token, uint256 _amount, address _user) public onlyAdmin;
```

