# YousignClientV3::IdDocumentVerification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for a resource. |  |
| **status** | [**IdDocumentVerificationStatus**](IdDocumentVerificationStatus.md) |  |  |
| **status_codes** | **Array&lt;Integer&gt;** | List of response codes. |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::IdDocumentVerification.new(
  id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  status: null,
  status_codes: [1706,1707]
)
```

