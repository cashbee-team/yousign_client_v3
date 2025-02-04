# YousignClientV3::VideoIdentityVerification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | [**VideoIdentityVerificationStatus**](VideoIdentityVerificationStatus.md) |  |  |
| **status_codes** | **Array&lt;Integer&gt;** | List of status codes. Indicates the cause when the status is pending, approved, declined or inconclusive. More details on codes can be found here https://developers.yousign.com/docs/follow-identity-verification-status#status-codes |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::VideoIdentityVerification.new(
  id: 89120884-d29a-4b1a-ac7b-a9e73a872795,
  status: null,
  status_codes: null
)
```

