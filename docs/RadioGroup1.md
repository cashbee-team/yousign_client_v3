# YousignClientV3::RadioGroup1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signer_id** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **optional** | **Boolean** |  | [optional][default to false] |
| **name** | **String** | Radio group&#39;s name | [optional] |
| **radios** | [**Array&lt;RadioGroup1RadiosInner&gt;**](RadioGroup1RadiosInner.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::RadioGroup1.new(
  signer_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  page: 1,
  optional: null,
  name: radio_group_name_1,
  radios: null
)
```

