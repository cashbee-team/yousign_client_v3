# YousignClientV3::Checkbox

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signer_id** | **String** |  |  |
| **type** | **String** |  |  |
| **page** | **Integer** |  |  |
| **x** | **Integer** |  |  |
| **y** | **Integer** |  |  |
| **size** | **Integer** |  | [optional][default to 24] |
| **optional** | **Boolean** |  | [optional][default to false] |
| **name** | **String** |  | [optional] |
| **checked** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Checkbox.new(
  signer_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  type: null,
  page: 1,
  x: 200,
  y: 400,
  size: 24,
  optional: null,
  name: Checkbox 1,
  checked: null
)
```

