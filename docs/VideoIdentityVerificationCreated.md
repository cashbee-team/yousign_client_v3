# YousignClientV3::VideoIdentityVerificationCreated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **verification_url** | **String** | The URL of the verification page that the user used to begin the verification process. |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::VideoIdentityVerificationCreated.new(
  id: 89120884-d29a-4b1a-ac7b-a9e73a872795,
  verification_url: https://id.ubble.ai/xxaaabbb11/
)
```

