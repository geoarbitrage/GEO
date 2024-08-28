# PlegedLog

## State Variables
### _tableId

```solidity
ResourceId constant _tableId = ResourceId.wrap(0x74620000000000000000000000000000506c656765644c6f6700000000000000);
```


### _fieldLayout

```solidity
FieldLayout constant _fieldLayout = FieldLayout.wrap(0x00d6090001142020202020012000000000000000000000000000000000000000);
```


### _keySchema

```solidity
Schema constant _keySchema = Schema.wrap(0x002001001f000000000000000000000000000000000000000000000000000000);
```


### _valueSchema

```solidity
Schema constant _valueSchema = Schema.wrap(0x00d6090060611f1f1f1f1f001f00000000000000000000000000000000000000);
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

### getReinvest

Get reinvest.


```solidity
function getReinvest(uint256 id) internal view returns (bool reinvest);
```

### _getReinvest

Get reinvest.


```solidity
function _getReinvest(uint256 id) internal view returns (bool reinvest);
```

### setReinvest

Set reinvest.


```solidity
function setReinvest(uint256 id, bool reinvest) internal;
```

### _setReinvest

Set reinvest.


```solidity
function _setReinvest(uint256 id, bool reinvest) internal;
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

### getPay

Get pay.


```solidity
function getPay(uint256 id) internal view returns (uint256 pay);
```

### _getPay

Get pay.


```solidity
function _getPay(uint256 id) internal view returns (uint256 pay);
```

### setPay

Set pay.


```solidity
function setPay(uint256 id, uint256 pay) internal;
```

### _setPay

Set pay.


```solidity
function _setPay(uint256 id, uint256 pay) internal;
```

### getHeight

Get height.


```solidity
function getHeight(uint256 id) internal view returns (uint256 height);
```

### _getHeight

Get height.


```solidity
function _getHeight(uint256 id) internal view returns (uint256 height);
```

### setHeight

Set height.


```solidity
function setHeight(uint256 id, uint256 height) internal;
```

### _setHeight

Set height.


```solidity
function _setHeight(uint256 id, uint256 height) internal;
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

### getCloseHeight

Get closeHeight.


```solidity
function getCloseHeight(uint256 id) internal view returns (uint256 closeHeight);
```

### _getCloseHeight

Get closeHeight.


```solidity
function _getCloseHeight(uint256 id) internal view returns (uint256 closeHeight);
```

### setCloseHeight

Set closeHeight.


```solidity
function setCloseHeight(uint256 id, uint256 closeHeight) internal;
```

### _setCloseHeight

Set closeHeight.


```solidity
function _setCloseHeight(uint256 id, uint256 closeHeight) internal;
```

### getCloseTime

Get closeTime.


```solidity
function getCloseTime(uint256 id) internal view returns (uint256 closeTime);
```

### _getCloseTime

Get closeTime.


```solidity
function _getCloseTime(uint256 id) internal view returns (uint256 closeTime);
```

### setCloseTime

Set closeTime.


```solidity
function setCloseTime(uint256 id, uint256 closeTime) internal;
```

### _setCloseTime

Set closeTime.


```solidity
function _setCloseTime(uint256 id, uint256 closeTime) internal;
```

### getStatus

Get status.


```solidity
function getStatus(uint256 id) internal view returns (PlegedStatus status);
```

### _getStatus

Get status.


```solidity
function _getStatus(uint256 id) internal view returns (PlegedStatus status);
```

### setStatus

Set status.


```solidity
function setStatus(uint256 id, PlegedStatus status) internal;
```

### _setStatus

Set status.


```solidity
function _setStatus(uint256 id, PlegedStatus status) internal;
```

### getIncome

Get income.


```solidity
function getIncome(uint256 id) internal view returns (uint256 income);
```

### _getIncome

Get income.


```solidity
function _getIncome(uint256 id) internal view returns (uint256 income);
```

### setIncome

Set income.


```solidity
function setIncome(uint256 id, uint256 income) internal;
```

### _setIncome

Set income.


```solidity
function _setIncome(uint256 id, uint256 income) internal;
```

### get

Get the full data.


```solidity
function get(uint256 id) internal view returns (PlegedLogData memory _table);
```

### _get

Get the full data.


```solidity
function _get(uint256 id) internal view returns (PlegedLogData memory _table);
```

### set

Set the full data using individual values.


```solidity
function set(
    uint256 id,
    bool reinvest,
    address user,
    uint256 pay,
    uint256 height,
    uint256 time,
    uint256 closeHeight,
    uint256 closeTime,
    PlegedStatus status,
    uint256 income
) internal;
```

### _set

Set the full data using individual values.


```solidity
function _set(
    uint256 id,
    bool reinvest,
    address user,
    uint256 pay,
    uint256 height,
    uint256 time,
    uint256 closeHeight,
    uint256 closeTime,
    PlegedStatus status,
    uint256 income
) internal;
```

### set

Set the full data using the data struct.


```solidity
function set(uint256 id, PlegedLogData memory _table) internal;
```

### _set

Set the full data using the data struct.


```solidity
function _set(uint256 id, PlegedLogData memory _table) internal;
```

### decodeStatic

Decode the tightly packed blob of static data using this table's field layout.


```solidity
function decodeStatic(bytes memory _blob)
    internal
    pure
    returns (
        bool reinvest,
        address user,
        uint256 pay,
        uint256 height,
        uint256 time,
        uint256 closeHeight,
        uint256 closeTime,
        PlegedStatus status,
        uint256 income
    );
```

### decode

Decode the tightly packed blobs using this table's field layout.


```solidity
function decode(bytes memory _staticData, EncodedLengths, bytes memory)
    internal
    pure
    returns (PlegedLogData memory _table);
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
function encodeStatic(
    bool reinvest,
    address user,
    uint256 pay,
    uint256 height,
    uint256 time,
    uint256 closeHeight,
    uint256 closeTime,
    PlegedStatus status,
    uint256 income
) internal pure returns (bytes memory);
```
**Returns**

|Name|Type|Description|
|----|----|-----------|
|`<none>`|`bytes`|The static data, encoded into a sequence of bytes.|


### encode

Encode all of a record's fields.


```solidity
function encode(
    bool reinvest,
    address user,
    uint256 pay,
    uint256 height,
    uint256 time,
    uint256 closeHeight,
    uint256 closeTime,
    PlegedStatus status,
    uint256 income
) internal pure returns (bytes memory, EncodedLengths, bytes memory);
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

