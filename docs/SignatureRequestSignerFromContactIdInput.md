# YousignClientV3::SignatureRequestSignerFromContactIdInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | Create signer from an existing contact |  |
| **fields** | [**Array&lt;FieldsInput&gt;**](FieldsInput.md) |  | [optional] |
| **signature_level** | **String** |  | [default to &#39;electronic_signature&#39;] |
| **signature_authentication_mode** | **String** |  | [optional] |
| **redirect_urls** | [**SignatureRequestSignerFromInfoInputRedirectUrls**](SignatureRequestSignerFromInfoInputRedirectUrls.md) |  | [optional] |
| **custom_text** | [**SignatureRequestSignerFromInfoInputCustomText**](SignatureRequestSignerFromInfoInputCustomText.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignatureRequestSignerFromContactIdInput.new(
  contact_id: ddecfb85-8a45-4254-b940-6171b8df0a90,
  fields: null,
  signature_level: null,
  signature_authentication_mode: null,
  redirect_urls: null,
  custom_text: null
)
```

