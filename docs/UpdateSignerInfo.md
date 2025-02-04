# YousignClientV3::UpdateSignerInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone_number** | **String** | E.164 format | [optional] |
| **locale** | [**Locale**](Locale.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::UpdateSignerInfo.new(
  first_name: John,
  last_name: Doe,
  email: null,
  phone_number: +41446667700,
  locale: null
)
```

