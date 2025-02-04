# YousignClientV3::Checkbox1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signer_id** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **x** | **Integer** |  | [optional] |
| **y** | **Integer** |  | [optional] |
| **size** | **Integer** |  | [optional][default to 24] |
| **optional** | **Boolean** |  | [optional][default to false] |
| **name** | **String** |  | [optional] |
| **checked** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Checkbox1.new(
  signer_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  page: 1,
  x: 400,
  y: 400,
  size: 24,
  optional: null,
  name: Checkbox 1,
  checked: null
)
```

