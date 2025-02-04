# YousignClientV3::OtpMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_text** | **String** | Custom text contained is the one-time password SMS sent to the Signer. This feature is available from SCALE plan, and disabled by default. Please contact [customer support](https://yousign.app/auth/workspace/help) to request an activation. |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::OtpMessage.new(
  custom_text: null
)
```

