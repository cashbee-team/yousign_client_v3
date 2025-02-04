# YousignClientV3::FieldCheckbox

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **document_id** | **String** |  |  |
| **signer_id** | **String** |  |  |
| **type** | **String** |  |  |
| **name** | **String** | Checkbox name |  |
| **checked** | **Boolean** | Signer has checked the checkbox |  |
| **page** | **Integer** |  |  |
| **optional** | **Boolean** |  |  |
| **x** | **Integer** |  |  |
| **y** | **Integer** |  |  |
| **size** | **Integer** | The size determines both the width and height of the checkbox. | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::FieldCheckbox.new(
  id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  document_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  signer_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  type: null,
  name: Checkbox name,
  checked: null,
  page: null,
  optional: null,
  x: null,
  y: null,
  size: null
)
```

