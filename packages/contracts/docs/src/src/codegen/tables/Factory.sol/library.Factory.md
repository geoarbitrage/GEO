# Factory

## State Variables
### _tableId

```solidity
ResourceId constant _tableId = ResourceId.wrap(0x74620000000000000000000000000000466163746f7279000000000000000000);
```


### _fieldLayout

```solidity
FieldLayout constant _fieldLayout = FieldLayout.wrap(0x0014010014000000000000000000000000000000000000000000000000000000);
```


### _keySchema

```solidity
Schema constant _keySchema = Schema.wrap(0x0000000000000000000000000000000000000000000000000000000000000000);
```


### _valueSchema

```solidity
Schema constant _valueSchema = Schema.wrap(0x0014010061000000000000000000000000000000000000000000000000000000);
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

### getValue

Get value.


```solidity
function getValue() internal view returns (address value);
```

### _getValue

Get value.


```solidity
function _getValue() internal view returns (address value);
```

### get

Get value.


```solidity
function get() internal view returns (address value);
```

### _get

Get value.


```solidity
function _get() internal view returns (address value);
```

### setValue

Set value.


```solidity
function setValue(address value) internal;
```

### _setValue

Set value.


```solidity
function _setValue(address value) internal;
```

### set

Set value.


```solidity
function set(address value) internal;
```

### _set

Set value.


```solidity
function _set(address value) internal;
```

### deleteRecord

Delete all data for given keys.


```solidity
function deleteRecord() internal;
```

### _deleteRecord

Delete all data for given keys.


```solidity
function _deleteRecord() internal;
```

### encodeStatic

Tightly pack static (fixed length) data using this table's schema.


```solidity
function encodeStatic(address value) internal pure returns (bytes memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes`|The static data, encoded into a sequence of bytes.|


### encode

Encode all of a record's fields.


```solidity
function encode(address value) internal pure returns (bytes memory, EncodedLengths, bytes memory);
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
function encodeKeyTuple() internal pure returns (bytes32[] memory);
```

