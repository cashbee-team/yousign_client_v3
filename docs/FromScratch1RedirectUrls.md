# YousignClientV3::FromScratch1RedirectUrls

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |
| **decline** | **String** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::FromScratch1RedirectUrls.new(
  success: https://example.com/success,
  error: https://example.com/error,
  decline: https://example.com/decline
)
```

