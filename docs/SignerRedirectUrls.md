# YousignClientV3::SignerRedirectUrls

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **String** |  |  |
| **error** | **String** |  |  |
| **decline** | **String** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignerRedirectUrls.new(
  success: https://example.com/success,
  error: https://example.com/error,
  decline: https://example.com/decline
)
```

