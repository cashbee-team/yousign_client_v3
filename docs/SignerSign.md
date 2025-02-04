# YousignClientV3::SignerSign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **otp** | **String** |  | [optional] |
| **ip_address** | [**SignerSIPAddress**](SignerSIPAddress.md) |  |  |
| **consent_given_at** | **Time** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignerSign.new(
  otp: 231457,
  ip_address: null,
  consent_given_at: 2024-01-18T22:00Z
)
```

