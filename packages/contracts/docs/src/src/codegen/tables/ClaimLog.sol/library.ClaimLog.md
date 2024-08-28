# ClaimLog

## State Variables
### _tableId

```solidity
ResourceId constant _tableId = ResourceId.wrap(0x74620000000000000000000000000000436c61696d4c6f670000000000000000);
```


### _fieldLayout

```solidity
FieldLayout constant _fieldLayout = FieldLayout.wrap(0x0054030014202000000000000000000000000000000000000000000000000000);
```


### _keySchema

```solidity
Schema constant _keySchema = Schema.wrap(0x002001001f000000000000000000000000000000000000000000000000000000);
```


### _valueSchema

```solidity
Schema constant _valueSchema = Schema.wrap(0x00540300611f1f00000000000000000000000000000000000000000000000000);
```


## Functions
### getKeyNames

Get the table's key field names.


```solidity
function getKeyNames() internal pure returns (string[] memory keyNames);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`keyNames`|`string[]`|An array of strings with the names of key fields.|


### getFieldNames

Get the table's value field names.


```solidity
function getFieldNames() internal pure returns (string[] memory fieldNames);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`fieldNames`|`string[]`|An array of strings with the names of value fields.|


### register

Register the table with its config.


```solidity
function register() internal;
```

### _register

Register the table with its config.


```solidity
function _register() internal;
```

### getUser

Get user.


```solidity
function getUser(uint256 id) internal view returns (address user);
```

### _getUser

Get user.


```solidity
function _getUser(uint256 id) internal view returns (address user);
```

### setUser

Set user.


```solidity
function setUser(uint256 id, address user) internal;
```

### _setUser

Set user.


```solidity
function _setUser(uint256 id, address user) internal;
```

### getAmount

Get amount.


```solidity
function getAmount(uint256 id) internal view returns (uint256 amount);
```

### _getAmount

Get amount.


```solidity
function _getAmount(uint256 id) internal view returns (uint256 amount);
```

### setAmount

Set amount.


```solidity
function setAmount(uint256 id, uint256 amount) internal;
```

### _setAmount

Set amount.


```solidity
function _setAmount(uint256 id, uint256 amount) internal;
```

### getTime

Get time.


```solidity
function getTime(uint256 id) internal view returns (uint256 time);
```

### _getTime

Get time.


```solidity
function _getTime(uint256 id) internal view returns (uint256 time);
```

### setTime

Set time.


```solidity
function setTime(uint256 id, uint256 time) internal;
```

### _setTime

Set time.


```solidity
function _setTime(uint256 id, uint256 time) internal;
```

### get

Get the full data.


```solidity
function get(uint256 id) internal view returns (ClaimLogData memory _table);
```

### _get

Get the full data.


```solidity
function _get(uint256 id) internal view returns (ClaimLogData memory _table);
```

### set

Set the full data using individual values.


```solidity
function set(uint256 id, address user, uint256 amount, uint256 time) internal;
```

### _set

Set the full data using individual values.


```solidity
function _set(uint256 id, address user, uint256 amount, uint256 time) internal;
```

### set

Set the full data using the data struct.


```solidity
function set(uint256 id, ClaimLogData memory _table) internal;
```

### _set

Set the full data using the data struct.


```solidity
function _set(uint256 id, ClaimLogData memory _table) internal;
```

### decodeStatic

Decode the tightly packed blob of static data using this table's field layout.


```solidity
function decodeStatic(bytes memory _blob) internal pure returns (address user, uint256 amount, uint256 time);
```

### decode

Decode the tightly packed blobs using this table's field layout.


```solidity
function decode(bytes memory _staticData, EncodedLengths, bytes memory)
    internal
    pure
    returns (ClaimLogData memory _table);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_staticData`|`bytes`|Tightly packed static fields.|
|`<none>`|`EncodedLengths`||
|`<none>`|`bytes`||


### deleteRecord

Delete all data for given keys.


```solidity
function deleteRecord(uint256 id) internal;
```

### _deleteRecord

Delete all data for given keys.


```solidity
function _deleteRecord(uint256 id) internal;
```

### encodeStatic

Tightly pack static (fixed length) data using this table's schema.


```solidity
function encodeStatic(address user, uint256 amount, uint256 time) internal pure returns (bytes memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes`|The static data, encoded into a sequence of bytes.|


### encode

Encode all of a record's fields.


```solidity
function encode(address user, uint256 amount, uint256 time)
    internal
    pure
    returns (bytes memory, EncodedLengths, bytes memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes`|The static (fixed length) data, encoded into a sequence of bytes.|
|`<none>`|`EncodedLengths`|The lengths of the dynamic fields (packed into a single bytes32 value).|
|`<none>`|`bytes`|The dynamic (variable length) data, encoded into a sequence of bytes.|


### encodeKeyTuple

Encode keys as a bytes32 array using this table's field layout.


```solidity
function encodeKeyTuple(uint256 id) internal pure returns (bytes32[] memory);
```

