# YousignClientV3::PostSignatureRequestsSignatureRequestIdReactivateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiration_date** | **Date** | Due date of the Signature Request (yyyy-mm-dd). Default to 6 month after the activation. |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::PostSignatureRequestsSignatureRequestIdReactivateRequest.new(
  expiration_date: null
)
```

