# YousignClientV3::Template

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [readonly] |
| **name** | **String** |  | [readonly] |
| **description** | **String** |  | [readonly] |
| **status** | **String** |  | [readonly] |
| **created_at** | **Time** |  | [readonly] |
| **workspace_id** | **String** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Template.new(
  id: 89120884-d29a-4b1a-ac7b-a9e73a872795,
  name: null,
  description: null,
  status: null,
  created_at: 2024-01-18T22:59Z,
  workspace_id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c
)
```

