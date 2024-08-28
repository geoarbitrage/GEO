# UserEx

## State Variables
### _tableId

```solidity
ResourceId constant _tableId = ResourceId.wrap(0x7462000000000000000000000000000055736572457800000000000000000000);
```


### _fieldLayout

```solidity
FieldLayout constant _fieldLayout = FieldLayout.wrap(0x0041030120200100000000000000000000000000000000000000000000000000);
```


### _keySchema

```solidity
Schema constant _keySchema = Schema.wrap(0x0014010061000000000000000000000000000000000000000000000000000000);
```


### _valueSchema

```solidity
Schema constant _valueSchema = Schema.wrap(0x004103011f1f6081000000000000000000000000000000000000000000000000);
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

### getTotal

Get total.


```solidity
function getTotal(address user) internal view returns (uint256 total);
```

### _getTotal

Get total.


```solidity
function _getTotal(address user) internal view returns (uint256 total);
```

### setTotal

Set total.


```solidity
function setTotal(address user, uint256 total) internal;
```

### _setTotal

Set total.


```solidity
function _setTotal(address user, uint256 total) internal;
```

### getLastOrder

Get lastOrder.


```solidity
function getLastOrder(address user) internal view returns (uint256 lastOrder);
```

### _getLastOrder

Get lastOrder.


```solidity
function _getLastOrder(address user) internal view returns (uint256 lastOrder);
```

### setLastOrder

Set lastOrder.


```solidity
function setLastOrder(address user, uint256 lastOrder) internal;
```

### _setLastOrder

Set lastOrder.


```solidity
function _setLastOrder(address user, uint256 lastOrder) internal;
```

### getIsParticipated

Get isParticipated.


```solidity
function getIsParticipated(address user) internal view returns (bool isParticipated);
```

### _getIsParticipated

Get isParticipated.


```solidity
function _getIsParticipated(address user) internal view returns (bool isParticipated);
```

### setIsParticipated

Set isParticipated.


```solidity
function setIsParticipated(address user, bool isParticipated) internal;
```

### _setIsParticipated

Set isParticipated.


```solidity
function _setIsParticipated(address user, bool isParticipated) internal;
```

### getOrders

Get orders.


```solidity
function getOrders(address user) internal view returns (uint256[] memory orders);
```

### _getOrders

Get orders.


```solidity
function _getOrders(address user) internal view returns (uint256[] memory orders);
```

### setOrders

Set orders.


```solidity
function setOrders(address user, uint256[] memory orders) internal;
```

### _setOrders

Set orders.


```solidity
function _setOrders(address user, uint256[] memory orders) internal;
```

### lengthOrders

Get the length of orders.


```solidity
function lengthOrders(address user) internal view returns (uint256);
```

### _lengthOrders

Get the length of orders.


```solidity
function _lengthOrders(address user) internal view returns (uint256);
```

### getItemOrders

Get an item of orders.

*Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.*


```solidity
function getItemOrders(address user, uint256 _index) internal view returns (uint256);
```

### _getItemOrders

Get an item of orders.

*Reverts with Store_IndexOutOfBounds if `_index` is out of bounds for the array.*


```solidity
function _getItemOrders(address user, uint256 _index) internal view returns (uint256);
```

### pushOrders

Push an element to orders.


```solidity
function pushOrders(address user, uint256 _element) internal;
```

### _pushOrders

Push an element to orders.


```solidity
function _pushOrders(address user, uint256 _element) internal;
```

### popOrders

Pop an element from orders.


```solidity
function popOrders(address user) internal;
```

### _popOrders

Pop an element from orders.


```solidity
function _popOrders(address user) internal;
```

### updateOrders

Update an element of orders at `_index`.


```solidity
function updateOrders(address user, uint256 _index, uint256 _element) internal;
```

### _updateOrders

Update an element of orders at `_index`.


```solidity
function _updateOrders(address user, uint256 _index, uint256 _element) internal;
```

### get

Get the full data.


```solidity
function get(address user) internal view returns (UserExData memory _table);
```

### _get

Get the full data.


```solidity
function _get(address user) internal view returns (UserExData memory _table);
```

### set

Set the full data using individual values.


```solidity
function set(address user, uint256 total, uint256 lastOrder, bool isParticipated, uint256[] memory orders) internal;
```

### _set

Set the full data using individual values.


```solidity
function _set(address user, uint256 total, uint256 lastOrder, bool isParticipated, uint256[] memory orders) internal;
```

### set

Set the full data using the data struct.


```solidity
function set(address user, UserExData memory _table) internal;
```

### _set

Set the full data using the data struct.


```solidity
function _set(address user, UserExData memory _table) internal;
```

### decodeStatic

Decode the tightly packed blob of static data using this table's field layout.


```solidity
function decodeStatic(bytes memory _blob)
    internal
    pure
    returns (uint256 total, uint256 lastOrder, bool isParticipated);
```

### decodeDynamic

Decode the tightly packed blob of dynamic data using the encoded lengths.


```solidity
function decodeDynamic(EncodedLengths _encodedLengths, bytes memory _blob)
    internal
    pure
    returns (uint256[] memory orders);
```

### decode

Decode the tightly packed blobs using this table's field layout.


```solidity
function decode(bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData)
    internal
    pure
    returns (UserExData memory _table);
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
function encodeStatic(uint256 total, uint256 lastOrder, bool isParticipated) internal pure returns (bytes memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes`|The static data, encoded into a sequence of bytes.|


### encodeLengths

Tightly pack dynamic data lengths using this table's schema.


```solidity
function encodeLengths(uint256[] memory orders) internal pure returns (EncodedLengths _encodedLengths);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`_encodedLengths`|`EncodedLengths`|The lengths of the dynamic fields (packed into a single bytes32 value).|


### encodeDynamic

Tightly pack dynamic (variable length) data using this table's schema.


```solidity
function encodeDynamic(uint256[] memory orders) internal pure returns (bytes memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes`|The dynamic data, encoded into a sequence of bytes.|


### encode

Encode all of a record's fields.


```solidity
function encode(uint256 total, uint256 lastOrder, bool isParticipated, uint256[] memory orders)
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

