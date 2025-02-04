# YousignClientV3::Text2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **type** | **String** |  |  |
| **page** | **Integer** |  |  |
| **x** | **Integer** |  |  |
| **y** | **Integer** |  |  |
| **width** | **Integer** | If not set, the width is automatically calculated with the max_length value | [optional] |
| **height** | **Integer** | The height must be 24 or a multiple of 15 greater than 24. If height is provided, max_length must be less than or equal to the maximum number of characters based on the width and height of the text field. | [optional] |
| **max_length** | **Integer** |  |  |
| **question** | **String** |  |  |
| **instruction** | **String** |  | [optional] |
| **optional** | **Boolean** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Text2.new(
  document_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  type: null,
  page: null,
  x: null,
  y: null,
  width: 90,
  height: 150,
  max_length: null,
  question: Where is Brian?,
  instruction: Give Brian&#39;s location,
  optional: null
)
```

