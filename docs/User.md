# YousignClientV3::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **email** | **String** |  |  |
| **phone_number** | **String** | E.164 format |  |
| **locale** | **String** |  |  |
| **avatar** | **String** |  |  |
| **job_title** | **String** |  |  |
| **is_active** | **Boolean** |  |  |
| **created_at** | **Time** |  | [readonly] |
| **role** | [**UserRole**](UserRole.md) |  |  |
| **workspaces** | [**Array&lt;UserWorkspacesInner&gt;**](UserWorkspacesInner.md) |  |  |
| **status** | [**UserStatus**](UserStatus.md) |  |  |
| **source** | **String** | The application used to create the &#x60;User&#x60; |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::User.new(
  id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  first_name: John,
  last_name: Doe,
  email: email@example.com,
  phone_number: +447123456789,
  locale: en,
  avatar: https://example.com/users/123456/avatar,
  job_title: Worker,
  is_active: null,
  created_at: 2024-01-18T22:59Z,
  role: null,
  workspaces: null,
  status: null,
  source: public_api
)
```

