# YousignClientV3::SignerInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **email** | **String** |  |  |
| **phone_number** | **String** | E.164 format. Becomes mandatory if &#x60;signature_authentication_mode&#x60; requires a phone number. |  |
| **locale** | [**Locale**](Locale.md) |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignerInfo.new(
  first_name: null,
  last_name: null,
  email: null,
  phone_number: null,
  locale: null
)
```

