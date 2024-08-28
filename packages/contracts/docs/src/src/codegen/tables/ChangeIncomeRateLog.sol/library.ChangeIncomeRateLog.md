# ChangeIncomeRateLog

## State Variables
### _tableId

```solidity
ResourceId constant _tableId = ResourceId.wrap(0x746200000000000000000000000000004368616e6765496e636f6d6552617465);
```


### _fieldLayout

```solidity
FieldLayout constant _fieldLayout = FieldLayout.wrap(0x0000000100000000000000000000000000000000000000000000000000000000);
```


### _keySchema

```solidity
Schema constant _keySchema = Schema.wrap(0x0000000000000000000000000000000000000000000000000000000000000000);
```


### _valueSchema

```solidity
Schema constant _valueSchema = Schema.wrap(0x0000000181000000000000000000000000000000000000000000000000000000);
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
function getValue() internal view returns (uint256[] memory value);
```

### _getValue

Get value.


```solidity
function _getValue() internal view returns (uint256[] memory value);
```

### get

Get value.


```solidity
function get() internal view returns (uint256[] memory value);
```

### _get

Get value.


```solidity
function _get() internal view returns (uint256[] memory value);
```

### setValue

Set value.


```solidity
function setValue(uint256[] memory value) internal;
```

### _setValue

Set value.


```solidity
function _setValue(uint256[] memory value) internal;
```

### set

Set value.


```solidity
function set(uint256[] memory value) internal;
```

### _set

Set value.


```solidity
function _set(uint256[] memory value) internal;
```

### lengthValue

Get the length of value.


```solidity
function lengthValue() internal view returns (uint256);
```

### _lengthValue

Get the length of value.


```solidity
function _lengthValue() internal view returns (uint256);
```

### length

Get the length of value.


```solidity
function length() internal view returns (uint256);
```

### _length

Get the length of value.


```solidity
function _length() internal view returns (uint256);
```

### getItemValue

Get an item of value.

*Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.*


```solidity
function getItemValue(uint256 _index) internal view returns (uint256);
```

### _getItemValue

Get an item of value.

*Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.*


```solidity
function _getItemValue(uint256 _index) internal view returns (uint256);
```

### getItem

Get an item of value.

*Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.*


```solidity
function getItem(uint256 _index) internal view returns (uint256);
```

### _getItem

Get an item of value.

*Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.*


```solidity
function _getItem(uint256 _index) internal view returns (uint256);
```

### pushValue

Push an element to value.


```solidity
function pushValue(uint256 _element) internal;
```

### _pushValue

Push an element to value.


```solidity
function _pushValue(uint256 _element) internal;
```

### push

Push an element to value.


```solidity
function push(uint256 _element) internal;
```

### _push

Push an element to value.


```solidity
function _push(uint256 _element) internal;
```

### popValue

Pop an element from value.


```solidity
function popValue() internal;
```

### _popValue

Pop an element from value.


```solidity
function _popValue() internal;
```

### pop

Pop an element from value.


```solidity
function pop() internal;
```

### _pop

Pop an element from value.


```solidity
function _pop() internal;
```

### updateValue

Update an element of value at `_index`.


```solidity
function updateValue(uint256 _index, uint256 _element) internal;
```

### _updateValue

Update an element of value at `_index`.


```solidity
function _updateValue(uint256 _index, uint256 _element) internal;
```

### update

Update an element of value at `_index`.


```solidity
function update(uint256 _index, uint256 _element) internal;
```

### _update

Update an element of value at `_index`.


```solidity
function _update(uint256 _index, uint256 _element) internal;
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

### encodeLengths

Tightly pack dynamic data lengths using this table's schema.


```solidity
function encodeLengths(uint256[] memory value) internal pure returns (EncodedLengths _encodedLengths);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`_encodedLengths`|`EncodedLengths`|The lengths of the dynamic fields (packed into a single bytes32 value).|


### encodeDynamic

Tightly pack dynamic (variable length) data using this table's schema.


```solidity
function encodeDynamic(uint256[] memory value) internal pure returns (bytes memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes`|The dynamic data, encoded into a sequence of bytes.|


### encode

Encode all of a record's fields.


```solidity
function encode(uint256[] memory value) internal pure returns (bytes memory, EncodedLengths, bytes memory);
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

