# YousignClientV3::SignatureRequestSignerFromUserIdInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | Create signer from an existing user |  |
| **fields** | [**Array&lt;FieldsInput&gt;**](FieldsInput.md) |  | [optional] |
| **signature_level** | **String** |  | [default to &#39;electronic_signature&#39;] |
| **signature_authentication_mode** | **String** |  | [optional] |
| **redirect_urls** | [**SignatureRequestSignerFromInfoInputRedirectUrls**](SignatureRequestSignerFromInfoInputRedirectUrls.md) |  | [optional] |
| **custom_text** | [**SignatureRequestSignerFromInfoInputCustomText**](SignatureRequestSignerFromInfoInputCustomText.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignatureRequestSignerFromUserIdInput.new(
  user_id: 8b6ed2f3-244f-487a-baa1-bbe4f51c8744,
  fields: null,
  signature_level: null,
  signature_authentication_mode: null,
  redirect_urls: null,
  custom_text: null
)
```

