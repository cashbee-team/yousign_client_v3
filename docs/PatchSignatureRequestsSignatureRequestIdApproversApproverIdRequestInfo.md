# YousignClientV3::PatchSignatureRequestsSignatureRequestIdApproversApproverIdRequestInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone_number** | **String** | E.164 format | [optional] |
| **locale** | [**Locale**](Locale.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::PatchSignatureRequestsSignatureRequestIdApproversApproverIdRequestInfo.new(
  first_name: null,
  last_name: null,
  email: null,
  phone_number: +41446667700,
  locale: null
)
```

