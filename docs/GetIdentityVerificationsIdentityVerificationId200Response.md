# YousignClientV3::GetIdentityVerificationsIdentityVerificationId200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | [**VideoIdentityVerificationStatus**](VideoIdentityVerificationStatus.md) |  |  |
| **status_codes** | **Array&lt;Integer&gt;** | List of status codes. Indicates the cause when the status is pending, approved, declined or inconclusive. More details on codes can be found here https://developers.yousign.com/docs/follow-identity-verification-status#status-codes |  |
| **verified** | [**VideoIdentityVerificationVerified**](VideoIdentityVerificationVerified.md) |  |  |
| **declared** | [**VideoIdentityVerificationDeclared**](VideoIdentityVerificationDeclared.md) |  |  |
| **extracted_from_document** | [**VideoIdentityVerificationDocument**](VideoIdentityVerificationDocument.md) |  |  |
| **verification_url** | **String** | The URL of the verification page that the user used to begin the verification process. |  |
| **face_image_url** | **String** | Temporary public link to the face image. Available for 10 minutes. |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::GetIdentityVerificationsIdentityVerificationId200Response.new(
  id: 89120884-d29a-4b1a-ac7b-a9e73a872795,
  status: null,
  status_codes: null,
  verified: null,
  declared: null,
  extracted_from_document: null,
  verification_url: https://id.ubble.ai/2f3e833c-6cf8-4c39-9004-cfb0e048ef63,
  face_image_url: https://storage-b.ubble.ai/11-production-ubble-ai/CKQNCMWHRPGT/idv_01jezpmz01mvn7r1n9eg596v5k/9a873da8-2395-4b05-b9a6-56644dfe2e06/9dc6948e-23b8-4405-81f2-28dccc0d9a71/face_asset_generation_0_rtc_face_0_rtc_face/face_crop_41.png?response-content-type&#x3D;image%2Fpng&amp;X-Amz-Algorithm&#x3D;AWS4-HMAC-SHA256&amp;X-Amz-Credential&#x3D;h6aivdggwQIvVyGWnAEw%2F20241216%2Feu-west-2%2Fs3%2Faws4_request&amp;X-Amz-Date&#x3D;20241216T100820Z&amp;X-Amz-Expires&#x3D;600&amp;X-Amz-SignedHeaders&#x3D;host&amp;X-Amz-Signature&#x3D;xxx
)
```

