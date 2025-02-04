# YousignClientV3::Checkbox2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **type** | **String** |  |  |
| **page** | **Integer** |  |  |
| **x** | **Integer** |  |  |
| **y** | **Integer** |  |  |
| **size** | **Integer** | The omission of size parameter is considered as deprecated. The size determines both the width and height of the checkbox. | [optional] |
| **optional** | **Boolean** |  |  |
| **name** | **String** |  | [optional] |
| **checked** | **Boolean** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Checkbox2.new(
  document_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  type: null,
  page: null,
  x: null,
  y: null,
  size: null,
  optional: null,
  name: Checkbox 1,
  checked: null
)
```

