# Relation

## State Variables
### _tableId

```solidity
ResourceId constant _tableId = ResourceId.wrap(0x7462000000000000000000000000000052656c6174696f6e0000000000000000);
```


### _fieldLayout

```solidity
FieldLayout constant _fieldLayout = FieldLayout.wrap(0x0054030214202000000000000000000000000000000000000000000000000000);
```


### _keySchema

```solidity
Schema constant _keySchema = Schema.wrap(0x0014010061000000000000000000000000000000000000000000000000000000);
```


### _valueSchema

```solidity
Schema constant _valueSchema = Schema.wrap(0x00540302611f1fc3c30000000000000000000000000000000000000000000000);
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

### getPid

Get pid.


```solidity
function getPid(address user) internal view returns (address pid);
```

### _getPid

Get pid.


```solidity
function _getPid(address user) internal view returns (address pid);
```

### setPid

Set pid.


```solidity
function setPid(address user, address pid) internal;
```

### _setPid

Set pid.


```solidity
function _setPid(address user, address pid) internal;
```

### getLevel

Get level.


```solidity
function getLevel(address user) internal view returns (uint256 level);
```

### _getLevel

Get level.


```solidity
function _getLevel(address user) internal view returns (uint256 level);
```

### setLevel

Set level.


```solidity
function setLevel(address user, uint256 level) internal;
```

### _setLevel

Set level.


```solidity
function _setLevel(address user, uint256 level) internal;
```

### getTime

Get time.


```solidity
function getTime(address user) internal view returns (uint256 time);
```

### _getTime

Get time.


```solidity
function _getTime(address user) internal view returns (uint256 time);
```

### setTime

Set time.


```solidity
function setTime(address user, uint256 time) internal;
```

### _setTime

Set time.


```solidity
function _setTime(address user, uint256 time) internal;
```

### getSon

Get son.


```solidity
function getSon(address user) internal view returns (address[] memory son);
```

### _getSon

Get son.


```solidity
function _getSon(address user) internal view returns (address[] memory son);
```

### setSon

Set son.


```solidity
function setSon(address user, address[] memory son) internal;
```

### _setSon

Set son.


```solidity
function _setSon(address user, address[] memory son) internal;
```

### lengthSon

Get the length of son.


```solidity
function lengthSon(address user) internal view returns (uint256);
```

### _lengthSon

Get the length of son.


```solidity
function _lengthSon(address user) internal view returns (uint256);
```

### getItemSon

Get an item of son.

*Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.*


```solidity
function getItemSon(address user, uint256 _index) internal view returns (address);
```

### _getItemSon

Get an item of son.

*Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.*


```solidity
function _getItemSon(address user, uint256 _index) internal view returns (address);
```

### pushSon

Push an element to son.


```solidity
function pushSon(address user, address _element) internal;
```

### _pushSon

Push an element to son.


```solidity
function _pushSon(address user, address _element) internal;
```

### popSon

Pop an element from son.


```solidity
function popSon(address user) internal;
```

### _popSon

Pop an element from son.


```solidity
function _popSon(address user) internal;
```

### updateSon

Update an element of son at `_index`.


```solidity
function updateSon(address user, uint256 _index, address _element) internal;
```

### _updateSon

Update an element of son at `_index`.


```solidity
function _updateSon(address user, uint256 _index, address _element) internal;
```

### getParent

Get parent.


```solidity
function getParent(address user) internal view returns (address[] memory parent);
```

### _getParent

Get parent.


```solidity
function _getParent(address user) internal view returns (address[] memory parent);
```

### setParent

Set parent.


```solidity
function setParent(address user, address[] memory parent) internal;
```

### _setParent

Set parent.


```solidity
function _setParent(address user, address[] memory parent) internal;
```

### lengthParent

Get the length of parent.


```solidity
function lengthParent(address user) internal view returns (uint256);
```

### _lengthParent

Get the length of parent.


```solidity
function _lengthParent(address user) internal view returns (uint256);
```

### getItemParent

Get an item of parent.

*Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.*


```solidity
function getItemParent(address user, uint256 _index) internal view returns (address);
```

### _getItemParent

Get an item of parent.

*Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.*


```solidity
function _getItemParent(address user, uint256 _index) internal view returns (address);
```

### pushParent

Push an element to parent.


```solidity
function pushParent(address user, address _element) internal;
```

### _pushParent

Push an element to parent.


```solidity
function _pushParent(address user, address _element) internal;
```

### popParent

Pop an element from parent.


```solidity
function popParent(address user) internal;
```

### _popParent

Pop an element from parent.


```solidity
function _popParent(address user) internal;
```

### updateParent

Update an element of parent at `_index`.


```solidity
function updateParent(address user, uint256 _index, address _element) internal;
```

### _updateParent

Update an element of parent at `_index`.


```solidity
function _updateParent(address user, uint256 _index, address _element) internal;
```

### get

Get the full data.


```solidity
function get(address user) internal view returns (RelationData memory _table);
```

### _get

Get the full data.


```solidity
function _get(address user) internal view returns (RelationData memory _table);
```

### set

Set the full data using individual values.


```solidity
function set(address user, address pid, uint256 level, uint256 time, address[] memory son, address[] memory parent)
    internal;
```

### _set

Set the full data using individual values.


```solidity
function _set(address user, address pid, uint256 level, uint256 time, address[] memory son, address[] memory parent)
    internal;
```

### set

Set the full data using the data struct.


```solidity
function set(address user, RelationData memory _table) internal;
```

### _set

Set the full data using the data struct.


```solidity
function _set(address user, RelationData memory _table) internal;
```

### decodeStatic

Decode the tightly packed blob of static data using this table's field layout.


```solidity
function decodeStatic(bytes memory _blob) internal pure returns (address pid, uint256 level, uint256 time);
```

### decodeDynamic

Decode the tightly packed blob of dynamic data using the encoded lengths.


```solidity
function decodeDynamic(EncodedLengths _encodedLengths, bytes memory _blob)
    internal
    pure
    returns (address[] memory son, address[] memory parent);
```

### decode

Decode the tightly packed blobs using this table's field layout.


```solidity
function decode(bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData)
    internal
    pure
    returns (RelationData memory _table);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`_staticData`|`bytes`|Tightly packed static fields.|
|`_encodedLengths`|`EncodedLengths`|Encoded lengths of dynamic fields.|
|`_dynamicData`|`bytes`|Tightly packed dynamic fields.|


### deleteRecord

Delete all data for given keys.


```solidity
function deleteRecord(address user) internal;
```

### _deleteRecord

Delete all data for given keys.


```solidity
function _deleteRecord(address user) internal;
```

### encodeStatic

Tightly pack static (fixed length) data using this table's schema.


```solidity
function encodeStatic(address pid, uint256 level, uint256 time) internal pure returns (bytes memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes`|The static data, encoded into a sequence of bytes.|


### encodeLengths

Tightly pack dynamic data lengths using this table's schema.


```solidity
function encodeLengths(address[] memory son, address[] memory parent)
    internal
    pure
    returns (EncodedLengths _encodedLengths);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`_encodedLengths`|`EncodedLengths`|The lengths of the dynamic fields (packed into a single bytes32 value).|


### encodeDynamic

Tightly pack dynamic (variable length) data using this table's schema.


```solidity
function encodeDynamic(address[] memory son, address[] memory parent) internal pure returns (bytes memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes`|The dynamic data, encoded into a sequence of bytes.|


### encode

Encode all of a record's fields.


```solidity
function encode(address pid, uint256 level, uint256 time, address[] memory son, address[] memory parent)
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
function encodeKeyTuple(address user) internal pure returns (bytes32[] memory);
```

