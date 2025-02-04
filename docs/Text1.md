# YousignClientV3::Text1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signer_id** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **x** | **Integer** |  | [optional] |
| **y** | **Integer** |  | [optional] |
| **width** | **Integer** | If not set, the width is automatically calculated with the max_length value | [optional] |
| **height** | **Integer** | The height must be 24 or a multiple of 15 greater than 24. If height is provided, max_length must be less than or equal to the maximum number of characters based on the width and height of the text field. | [optional] |
| **max_length** | **Integer** |  | [optional] |
| **question** | **String** | If you don&#39;t want any question, you can give an empty string. | [optional] |
| **instruction** | **String** |  | [optional] |
| **optional** | **Boolean** |  | [optional][default to false] |
| **font** | [**UpdateFieldFont**](UpdateFieldFont.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Text1.new(
  signer_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  page: 1,
  x: 400,
  y: 400,
  width: 200,
  height: 150,
  max_length: 150,
  question: Where is Brian?,
  instruction: Give Brian&#39;s location,
  optional: null,
  font: null
)
```

