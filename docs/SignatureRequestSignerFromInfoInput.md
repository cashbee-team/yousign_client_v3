# YousignClientV3::SignatureRequestSignerFromInfoInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **info** | [**SignatureRequestSignerFromInfoInputInfo**](SignatureRequestSignerFromInfoInputInfo.md) |  |  |
| **fields** | [**Array&lt;FieldsInput&gt;**](FieldsInput.md) |  | [optional] |
| **signature_level** | **String** |  | [default to &#39;electronic_signature&#39;] |
| **signature_authentication_mode** | **String** |  | [optional] |
| **redirect_urls** | [**SignatureRequestSignerFromInfoInputRedirectUrls**](SignatureRequestSignerFromInfoInputRedirectUrls.md) |  | [optional] |
| **custom_text** | [**SignatureRequestSignerFromInfoInputCustomText**](SignatureRequestSignerFromInfoInputCustomText.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignatureRequestSignerFromInfoInput.new(
  info: null,
  fields: null,
  signature_level: null,
  signature_authentication_mode: null,
  redirect_urls: null,
  custom_text: null
)
```

