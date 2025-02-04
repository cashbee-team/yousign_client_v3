# YousignClientV3::ReadOnlyText1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** |  | [optional] |
| **x** | **Integer** |  | [optional] |
| **y** | **Integer** |  | [optional] |
| **width** | **Integer** | If not set, the width is automatically calculated with the mention length. | [optional] |
| **height** | **Integer** | The height must be 24 or a multiple of 15 greater than 24. If height is not provided, it will be calculated depending on the number of newlines in the mention. | [optional] |
| **text** | **String** |  | [optional] |
| **font** | [**UpdateFieldFont**](UpdateFieldFont.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::ReadOnlyText1.new(
  page: 1,
  x: 400,
  y: 400,
  width: 24,
  height: 150,
  text: Order n°12345,
  font: null
)
```

