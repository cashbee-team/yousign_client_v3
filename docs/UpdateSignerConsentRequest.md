# YousignClientV3::UpdateSignerConsentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings** | [**CreateSignerConsentRequestSettings**](CreateSignerConsentRequestSettings.md) |  | [optional] |
| **optional** | **Boolean** | Define if the Signer Consent Request is optional for Signers | [optional] |
| **insert_after_id** | **String** | Insert just after the position of the specified Signer Consent Request id | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::UpdateSignerConsentRequest.new(
  settings: null,
  optional: false,
  insert_after_id: null
)
```

