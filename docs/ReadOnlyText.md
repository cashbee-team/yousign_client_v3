# YousignClientV3::ReadOnlyText

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **page** | **Integer** |  |  |
| **x** | **Integer** |  |  |
| **y** | **Integer** |  |  |
| **width** | **Integer** | If not set, the width is automatically calculated with the read only text length. | [optional] |
| **height** | **Integer** | The height must be 24 or a multiple of 15 greater than 24. If height is not provided, it will be calculated depending on the number of newlines in the read only text. | [optional] |
| **text** | **String** |  |  |
| **font** | [**CreateFieldFont**](CreateFieldFont.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::ReadOnlyText.new(
  type: null,
  page: 1,
  x: 200,
  y: 400,
  width: 250,
  height: 150,
  text: Order n°12345,
  font: null
)
```

