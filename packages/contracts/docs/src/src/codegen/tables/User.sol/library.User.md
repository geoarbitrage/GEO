# User

## State Variables
### _tableId

```solidity
ResourceId constant _tableId = ResourceId.wrap(0x7462000000000000000000000000000055736572000000000000000000000000);
```


### _fieldLayout

```solidity
FieldLayout constant _fieldLayout = FieldLayout.wrap(0x0100080020202020202020200000000000000000000000000000000000000000);
```


### _keySchema

```solidity
Schema constant _keySchema = Schema.wrap(0x0014010061000000000000000000000000000000000000000000000000000000);
```


### _valueSchema

```solidity
Schema constant _valueSchema = Schema.wrap(0x010008001f1f1f1f1f1f1f1f0000000000000000000000000000000000000000);
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

### getPledge

Get pledge.


```solidity
function getPledge(address user) internal view returns (uint256 pledge);
```

### _getPledge

Get pledge.


```solidity
function _getPledge(address user) internal view returns (uint256 pledge);
```

### setPledge

Set pledge.


```solidity
function setPledge(address user, uint256 pledge) internal;
```

### _setPledge

Set pledge.


```solidity
function _setPledge(address user, uint256 pledge) internal;
```

### getPledgeIncome

Get pledgeIncome.


```solidity
function getPledgeIncome(address user) internal view returns (uint256 pledgeIncome);
```

### _getPledgeIncome

Get pledgeIncome.


```solidity
function _getPledgeIncome(address user) internal view returns (uint256 pledgeIncome);
```

### setPledgeIncome

Set pledgeIncome.


```solidity
function setPledgeIncome(address user, uint256 pledgeIncome) internal;
```

### _setPledgeIncome

Set pledgeIncome.


```solidity
function _setPledgeIncome(address user, uint256 pledgeIncome) internal;
```

### getDynamicIncome

Get dynamicIncome.


```solidity
function getDynamicIncome(address user) internal view returns (uint256 dynamicIncome);
```

### _getDynamicIncome

Get dynamicIncome.


```solidity
function _getDynamicIncome(address user) internal view returns (uint256 dynamicIncome);
```

### setDynamicIncome

Set dynamicIncome.


```solidity
function setDynamicIncome(address user, uint256 dynamicIncome) internal;
```

### _setDynamicIncome

Set dynamicIncome.


```solidity
function _setDynamicIncome(address user, uint256 dynamicIncome) internal;
```

### getLevelIncome

Get levelIncome.


```solidity
function getLevelIncome(address user) internal view returns (uint256 levelIncome);
```

### _getLevelIncome

Get levelIncome.


```solidity
function _getLevelIncome(address user) internal view returns (uint256 levelIncome);
```

### setLevelIncome

Set levelIncome.


```solidity
function setLevelIncome(address user, uint256 levelIncome) internal;
```

### _setLevelIncome

Set levelIncome.


```solidity
function _setLevelIncome(address user, uint256 levelIncome) internal;
```

### getGradedIncome

Get gradedIncome.


```solidity
function getGradedIncome(address user) internal view returns (uint256 gradedIncome);
```

### _getGradedIncome

Get gradedIncome.


```solidity
function _getGradedIncome(address user) internal view returns (uint256 gradedIncome);
```

### setGradedIncome

Set gradedIncome.


```solidity
function setGradedIncome(address user, uint256 gradedIncome) internal;
```

### _setGradedIncome

Set gradedIncome.


```solidity
function _setGradedIncome(address user, uint256 gradedIncome) internal;
```

### getFlashIncome

Get flashIncome.


```solidity
function getFlashIncome(address user) internal view returns (uint256 flashIncome);
```

### _getFlashIncome

Get flashIncome.


```solidity
function _getFlashIncome(address user) internal view returns (uint256 flashIncome);
```

### setFlashIncome

Set flashIncome.


```solidity
function setFlashIncome(address user, uint256 flashIncome) internal;
```

### _setFlashIncome

Set flashIncome.


```solidity
function _setFlashIncome(address user, uint256 flashIncome) internal;
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

### get

Get the full data.


```solidity
function get(address user) internal view returns (UserData memory _table);
```

### _get

Get the full data.


```solidity
function _get(address user) internal view returns (UserData memory _table);
```

### set

Set the full data using individual values.


```solidity
function set(
    address user,
    uint256 pledge,
    uint256 pledgeIncome,
    uint256 dynamicIncome,
    uint256 levelIncome,
    uint256 gradedIncome,
    uint256 flashIncome,
    uint256 level,
    uint256 time
) internal;
```

### _set

Set the full data using individual values.


```solidity
function _set(
    address user,
    uint256 pledge,
    uint256 pledgeIncome,
    uint256 dynamicIncome,
    uint256 levelIncome,
    uint256 gradedIncome,
    uint256 flashIncome,
    uint256 level,
    uint256 time
) internal;
```

### set

Set the full data using the data struct.


```solidity
function set(address user, UserData memory _table) internal;
```

### _set

Set the full data using the data struct.


```solidity
function _set(address user, UserData memory _table) internal;
```

### decodeStatic

Decode the tightly packed blob of static data using this table's field layout.


```solidity
function decodeStatic(bytes memory _blob)
    internal
    pure
    returns (
        uint256 pledge,
        uint256 pledgeIncome,
        uint256 dynamicIncome,
        uint256 levelIncome,
        uint256 gradedIncome,
        uint256 flashIncome,
        uint256 level,
        uint256 time
    );
```

### decode

Decode the tightly packed blobs using this table's field layout.


```solidity
function decode(bytes memory _staticData, EncodedLengths, bytes memory)
    internal
    pure
    returns (UserData memory _table);
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
function encodeStatic(
    uint256 pledge,
    uint256 pledgeIncome,
    uint256 dynamicIncome,
    uint256 levelIncome,
    uint256 gradedIncome,
    uint256 flashIncome,
    uint256 level,
    uint256 time
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
    uint256 pledge,
    uint256 pledgeIncome,
    uint256 dynamicIncome,
    uint256 levelIncome,
    uint256 gradedIncome,
    uint256 flashIncome,
    uint256 level,
    uint256 time
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
function encodeKeyTuple(address user) internal pure returns (bytes32[] memory);
```

