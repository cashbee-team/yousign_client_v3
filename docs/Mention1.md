# YousignClientV3::Mention1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signer_id** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **x** | **Integer** |  | [optional] |
| **y** | **Integer** |  | [optional] |
| **width** | **Integer** | If not set, the width is automatically calculated with the read only text length. | [optional] |
| **height** | **Integer** | The height must be 24 or a multiple of 15 greater than 24. If height is not provided, it will be calculated depending on the number of newlines in the read only text. | [optional] |
| **mention** | **String** |  | [optional] |
| **font** | [**UpdateFieldFont**](UpdateFieldFont.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Mention1.new(
  signer_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  page: 1,
  x: 400,
  y: 400,
  width: 200,
  height: 150,
  mention: Here is a custom mention value.,
  font: null
)
```

