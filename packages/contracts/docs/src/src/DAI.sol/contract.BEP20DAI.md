# BEP20DAI
**Inherits:**
[Context](/src/DAI.sol/contract.Context.md), [IBEP20](/src/DAI.sol/interface.IBEP20.md), [Ownable](/src/DAI.sol/contract.Ownable.md)


## State Variables
### _balances

```solidity
mapping(address => uint256) private _balances;
```


### _allowances

```solidity
mapping(address => mapping(address => uint256)) private _allowances;
```


### _totalSupply

```solidity
uint256 private _totalSupply;
```


### _decimals

```solidity
uint8 public _decimals;
```


### _symbol

```solidity
string public _symbol;
```


### _name

```solidity
string public _name;
```


## Functions
### constructor


```solidity
constructor() public;
```

### getOwner

*Returns the bep token owner.*


```solidity
function getOwner() external view returns (address);
```

### decimals

*Returns the token decimals.*


```solidity
function decimals() external view returns (uint8);
```

### symbol

*Returns the token symbol.*


```solidity
function symbol() external view returns (string memory);
```

### name

*Returns the token name.*


```solidity
function name() external view returns (string memory);
```

### totalSupply

*See [BEP20-totalSupply](/src/X314.sol/abstract.ERC314.md#totalsupply).*


```solidity
function totalSupply() external view returns (uint256);
```

### balanceOf

*See [BEP20-balanceOf](/src/X314.sol/abstract.ERC314.md#balanceof).*


```solidity
function balanceOf(address account) external view returns (uint256);
```

### transfer

*See [BEP20-transfer](/src/X314.sol/abstract.ERC314.md#transfer).
Requirements:
- `recipient` cannot be the zero address.
- the caller must have a balance of at least `amount`.*


```solidity
function transfer(address recipient, uint256 amount) external returns (bool);
```

### allowance

*See [BEP20-allowance](/src/lib/IERC20.sol/interface.IERC20.md#allowance).*


```solidity
function allowance(address owner, address spender) external view returns (uint256);
```

### approve

*See [BEP20-approve](/src/lib/IERC20.sol/interface.IERC20.md#approve).
Requirements:
- `spender` cannot be the zero address.*


```solidity
function approve(address spender, uint256 amount) external returns (bool);
```

### transferFrom

*See [BEP20-transferFrom](/src/lib/IERC20.sol/interface.IERC20.md#transferfrom).
Emits an {Approval} event indicating the updated allowance. This is not
required by the EIP. See the note at the beginning of {BEP20};
Requirements:
- `sender` and `recipient` cannot be the zero address.
- `sender` must have a balance of at least `amount`.
- the caller must have allowance for `sender`'s tokens of at least
`amount`.*


```solidity
function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
```

### increaseAllowance

*Atomically increases the allowance granted to `spender` by the caller.
This is an alternative to [approve](/src/DAI.sol/contract.BEP20DAI.md#approve) that can be used as a mitigation for
problems described in {BEP20-approve}.
Emits an {Approval} event indicating the updated allowance.
Requirements:
- `spender` cannot be the zero address.*


```solidity
function increaseAllowance(address spender, uint256 addedValue) public returns (bool);
```

### decreaseAllowance

*Atomically decreases the allowance granted to `spender` by the caller.
This is an alternative to [approve](/src/DAI.sol/contract.BEP20DAI.md#approve) that can be used as a mitigation for
problems described in {BEP20-approve}.
Emits an {Approval} event indicating the updated allowance.
Requirements:
- `spender` cannot be the zero address.
- `spender` must have allowance for the caller of at least
`subtractedValue`.*


```solidity
function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool);
```

### mint

*Creates `amount` tokens and assigns them to `msg.sender`, increasing
the total supply.
Requirements
- `msg.sender` must be the token owner*


```solidity
function mint(uint256 amount) public onlyOwner returns (bool);
```

### burn

*Burn `amount` tokens and decreasing the total supply.*


```solidity
function burn(uint256 amount) public returns (bool);
```

### _transfer

*Moves tokens `amount` from `sender` to `recipient`.
This is internal function is equivalent to [transfer](/src/DAI.sol/contract.BEP20DAI.md#transfer), and can be used to
e.g. implement automatic token fees, slashing mechanisms, etc.
Emits a {Transfer} event.
Requirements:
- `sender` cannot be the zero address.
- `recipient` cannot be the zero address.
- `sender` must have a balance of at least `amount`.*


```solidity
function _transfer(address sender, address recipient, uint256 amount) internal;
```

### _mint

*Creates `amount` tokens and assigns them to `account`, increasing
the total supply.
Emits a {Transfer} event with `from` set to the zero address.
Requirements
- `to` cannot be the zero address.*


```solidity
function _mint(address account, uint256 amount) internal;
```

### _burn

*Destroys `amount` tokens from `account`, reducing the
total supply.
Emits a {Transfer} event with `to` set to the zero address.
Requirements
- `account` cannot be the zero address.
- `account` must have at least `amount` tokens.*


```solidity
function _burn(address account, uint256 amount) internal;
```

### _approve

*Sets `amount` as the allowance of `spender` over the `owner`s tokens.
This is internal function is equivalent to `approve`, and can be used to
e.g. set automatic allowances for certain subsystems, etc.
Emits an {Approval} event.
Requirements:
- `owner` cannot be the zero address.
- `spender` cannot be the zero address.*


```solidity
function _approve(address owner, address spender, uint256 amount) internal;
```

### _burnFrom

*Destroys `amount` tokens from `account`.`amount` is then deducted
from the caller's allowance.
See [_burn](/src/DAI.sol/contract.BEP20DAI.md#_burn) and {_approve}.*


```solidity
function _burnFrom(address account, uint256 amount) internal;
```

