# YousignClientV3::Text

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signer_id** | **String** |  |  |
| **type** | **String** |  |  |
| **page** | **Integer** |  |  |
| **x** | **Integer** |  |  |
| **y** | **Integer** |  |  |
| **width** | **Integer** | If not set, the width is automatically calculated with the max_length value | [optional] |
| **height** | **Integer** | The height must be 24 or a multiple of 15 greater than 24. If height is provided, max_length must be less than or equal to the maximum number of characters based on the width and height of the text field. | [optional] |
| **max_length** | **Integer** |  |  |
| **question** | **String** | If you don&#39;t want any question, you can give an empty string. |  |
| **instruction** | **String** |  | [optional] |
| **optional** | **Boolean** |  | [optional][default to false] |
| **font** | [**CreateFieldFont**](CreateFieldFont.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Text.new(
  signer_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  type: null,
  page: 1,
  x: 200,
  y: 400,
  width: 90,
  height: 150,
  max_length: 120,
  question: Where is Brian?,
  instruction: Give Brian&#39;s location,
  optional: null,
  font: null
)
```

