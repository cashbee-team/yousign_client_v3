# YousignClientV3::Mention2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **type** | **String** |  |  |
| **page** | **Integer** |  |  |
| **x** | **Integer** |  |  |
| **y** | **Integer** |  |  |
| **width** | **Integer** | If not set, the width is automatically calculated with the mention length | [optional] |
| **height** | **Integer** | The height must be 24 or a multiple of 15 greater than 24. If height is not provided, it will be calculated depending on the number of newlines in the mention | [optional] |
| **mention** | **String** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Mention2.new(
  document_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  type: null,
  page: null,
  x: null,
  y: null,
  width: null,
  height: 150,
  mention: null
)
```

