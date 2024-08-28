# _toBool
Cast a value to a bool.

*Boolean values are encoded as uint8 (1 = true, 0 = false), but Solidity doesn't allow casting between uint8 and bool.*


```solidity
function _toBool(uint8 value) pure returns (bool result);
```
**Parameters**

|Name|Type|Description|
|----|----|-----------|
|`value`|`uint8`|The uint8 value to convert.|

**Returns**

|Name|Type|Description|
|----|----|-----------|
|`result`|`bool`|The boolean value.|


