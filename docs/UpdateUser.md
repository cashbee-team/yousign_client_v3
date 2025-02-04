# YousignClientV3::UpdateUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** | New role assigned to the User. It can be &#x60;member&#x60; or &#x60;admin&#x60;. | [optional] |
| **active** | **Boolean** | If &#x60;true&#x60;, the User will be activated; if &#x60;false&#x60;, the User will be suspended. | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::UpdateUser.new(
  role: null,
  active: null
)
```

