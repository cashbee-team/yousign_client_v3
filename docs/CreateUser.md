# YousignClientV3::CreateUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address must not match any existing User&#39;s email.  |  |
| **role** | **String** | Role assigned to the User in the Organization.  |  |
| **locale** | [**Locale**](Locale.md) |  |  |
| **workspaces** | **Array&lt;String&gt;** | The new User must be associated with at least one Workspace in the Organization.  |  |
| **first_name** | **String** | User&#39;s first name | [optional] |
| **last_name** | **String** | User&#39;s last name | [optional] |
| **phone_number** | **String** | E.164 format | [optional] |
| **job_title** | **String** | This property cannot start or end with whitespace, does not allow HTML tags, URL or email.  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateUser.new(
  email: john.doe@example.com,
  role: null,
  locale: null,
  workspaces: null,
  first_name: John,
  last_name: Doe,
  phone_number: +41446667700,
  job_title: Employee
)
```

