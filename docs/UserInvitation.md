# YousignClientV3::UserInvitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [readonly] |
| **email** | **String** |  | [readonly] |
| **role** | [**ManageableRole**](ManageableRole.md) |  |  |
| **workspaces** | [**Array&lt;UserWorkspacesInner&gt;**](UserWorkspacesInner.md) |  | [readonly] |
| **expired_at** | **Time** |  | [readonly] |
| **created_at** | **Time** |  | [readonly] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::UserInvitation.new(
  id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  email: email@example.com,
  role: null,
  workspaces: null,
  expired_at: 2024-01-18T22:59Z,
  created_at: 2024-01-18T22:59Z
)
```

