# YousignClientV3::FieldText

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **document_id** | **String** |  |  |
| **signer_id** | **String** |  |  |
| **type** | **String** |  |  |
| **width** | **Integer** | If not set, the width is automatically calculated with the max_length value |  |
| **height** | **Integer** | The height must be 24 or a multiple of 15 greater than 24. If height is provided, max_length must be less than or equal to the maximum number of characters based on the width and height of the text field. |  |
| **page** | **Integer** |  |  |
| **x** | **Integer** |  |  |
| **y** | **Integer** |  |  |
| **question** | **String** |  |  |
| **instruction** | **String** |  |  |
| **optional** | **Boolean** |  |  |
| **answer** | **String** |  |  |
| **max_length** | **Integer** |  |  |
| **font** | [**Font**](Font.md) |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::FieldText.new(
  id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  document_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  signer_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  type: null,
  width: 90,
  height: 150,
  page: null,
  x: null,
  y: null,
  question: Where is Brian?,
  instruction: Give Brian&#39;s location,
  optional: null,
  answer: Brian is in the kitchen !,
  max_length: null,
  font: null
)
```

