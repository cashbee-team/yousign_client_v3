# YousignClientV3::RadioGroup2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **type** | **String** |  |  |
| **page** | **Integer** |  |  |
| **optional** | **Boolean** |  |  |
| **name** | **String** | Radio group&#39;s name | [optional] |
| **radios** | [**Array&lt;RadioGroup2RadiosInner&gt;**](RadioGroup2RadiosInner.md) |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::RadioGroup2.new(
  document_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  type: null,
  page: null,
  optional: null,
  name: radio_group_name_1,
  radios: null
)
```

