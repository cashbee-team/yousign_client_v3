# YousignClientV3::SignatureRequestSignerFromInfoInputRedirectUrls

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignatureRequestSignerFromInfoInputRedirectUrls.new(
  success: https://example.com/success,
  error: https://example.com/error
)
```

