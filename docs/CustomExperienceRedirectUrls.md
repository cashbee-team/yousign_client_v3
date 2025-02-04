# YousignClientV3::CustomExperienceRedirectUrls

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **String** |  |  |
| **error** | **String** |  |  |
| **decline** | **String** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CustomExperienceRedirectUrls.new(
  success: https://example.com/success,
  error: https://example.com/error,
  decline: https://example.com/decline
)
```

