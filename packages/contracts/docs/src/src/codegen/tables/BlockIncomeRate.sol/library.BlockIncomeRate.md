# BlockIncomeRate

## State Variables
### _tableId

```solidity
ResourceId constant _tableId = ResourceId.wrap(0x74620000000000000000000000000000426c6f636b496e636f6d655261746500);
```


### _fieldLayout

```solidity
FieldLayout constant _fieldLayout = FieldLayout.wrap(0x0040020020200000000000000000000000000000000000000000000000000000);
```


### _keySchema

```solidity
Schema constant _keySchema = Schema.wrap(0x002001001f000000000000000000000000000000000000000000000000000000);
```


### _valueSchema

```solidity
Schema constant _valueSchema = Schema.wrap(0x004002001f1f0000000000000000000000000000000000000000000000000000);
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

### getRate

Get rate.


```solidity
function getRate(uint256 height) internal view returns (uint256 rate);
```

### _getRate

Get rate.


```solidity
function _getRate(uint256 height) internal view returns (uint256 rate);
```

### setRate

Set rate.


```solidity
function setRate(uint256 height, uint256 rate) internal;
```

### _setRate

Set rate.


```solidity
function _setRate(uint256 height, uint256 rate) internal;
```

### getTime

Get time.


```solidity
function getTime(uint256 height) internal view returns (uint256 time);
```

### _getTime

Get time.


```solidity
function _getTime(uint256 height) internal view returns (uint256 time);
```

### setTime

Set time.


```solidity
function setTime(uint256 height, uint256 time) internal;
```

### _setTime

Set time.


```solidity
function _setTime(uint256 height, uint256 time) internal;
```

### get

Get the full data.


```solidity
function get(uint256 height) internal view returns (BlockIncomeRateData memory _table);
```

### _get

Get the full data.


```solidity
function _get(uint256 height) internal view returns (BlockIncomeRateData memory _table);
```

### set

Set the full data using individual values.


```solidity
function set(uint256 height, uint256 rate, uint256 time) internal;
```

### _set

Set the full data using individual values.


```solidity
function _set(uint256 height, uint256 rate, uint256 time) internal;
```

### set

Set the full data using the data struct.


```solidity
function set(uint256 height, BlockIncomeRateData memory _table) internal;
```

### _set

Set the full data using the data struct.


```solidity
function _set(uint256 height, BlockIncomeRateData memory _table) internal;
```

### decodeStatic

Decode the tightly packed blob of static data using this table's field layout.


```solidity
function decodeStatic(bytes memory _blob) internal pure returns (uint256 rate, uint256 time);
```

### decode

Decode the tightly packed blobs using this table's field layout.


```solidity
function decode(bytes memory _staticData, EncodedLengths, bytes memory)
    internal
    pure
    returns (BlockIncomeRateData memory _table);
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
function deleteRecord(uint256 height) internal;
```

### _deleteRecord

Delete all data for given keys.


```solidity
function _deleteRecord(uint256 height) internal;
```

### encodeStatic

Tightly pack static (fixed length) data using this table's schema.


```solidity
function encodeStatic(uint256 rate, uint256 time) internal pure returns (bytes memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes`|The static data, encoded into a sequence of bytes.|


### encode

Encode all of a record's fields.


```solidity
function encode(uint256 rate, uint256 time) internal pure returns (bytes memory, EncodedLengths, bytes memory);
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
function encodeKeyTuple(uint256 height) internal pure returns (bytes32[] memory);
```

