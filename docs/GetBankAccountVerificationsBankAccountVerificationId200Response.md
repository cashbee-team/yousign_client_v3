# YousignClientV3::GetBankAccountVerificationsBankAccountVerificationId200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for a resource. | [optional] |
| **status** | [**BankAccountVerificationStatus**](BankAccountVerificationStatus.md) |  | [optional] |
| **status_codes** | **Array&lt;Integer&gt;** | List of response codes. | [optional] |
| **extracted_from_document** | [**GetBankAccountVerificationsExtractedFromDocument**](GetBankAccountVerificationsExtractedFromDocument.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::GetBankAccountVerificationsBankAccountVerificationId200Response.new(
  id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  status: null,
  status_codes: [1604, 1611],
  extracted_from_document: null
)
```

