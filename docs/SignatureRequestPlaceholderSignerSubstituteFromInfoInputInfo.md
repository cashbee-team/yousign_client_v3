# YousignClientV3::SignatureRequestPlaceholderSignerSubstituteFromInfoInputInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **email** | **String** |  |  |
| **phone_number** | **String** | E.164 format. Becomes mandatory if &#x60;signature_authentication_mode&#x60; requires a phone number. | [optional] |
| **locale** | [**Locale**](Locale.md) |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignatureRequestPlaceholderSignerSubstituteFromInfoInputInfo.new(
  first_name: John,
  last_name: Doe,
  email: null,
  phone_number: +41446667700,
  locale: null
)
```

