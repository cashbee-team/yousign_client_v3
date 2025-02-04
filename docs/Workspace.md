# YousignClientV3::Workspace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [readonly] |
| **name** | **String** |  |  |
| **external_name** | **String** |  |  |
| **default** | **Boolean** |  |  |
| **created_at** | **Time** |  | [readonly] |
| **updated_at** | **Time** |  | [readonly] |
| **deleted_at** | **Time** |  | [readonly] |
| **users** | [**Array&lt;WorkspaceUsersInner&gt;**](WorkspaceUsersInner.md) |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Workspace.new(
  id: 89120884-d29a-4b1a-ac7b-a9e73a872795,
  name: null,
  external_name: null,
  default: null,
  created_at: 2024-01-18T22:59Z,
  updated_at: 2024-01-18T22:59Z,
  deleted_at: null,
  users: null
)
```

