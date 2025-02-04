# YousignClientV3::SignatureRequestPlaceholderSignerSubstituteFromInfoInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** |  |  |
| **info** | [**SignatureRequestPlaceholderSignerSubstituteFromInfoInputInfo**](SignatureRequestPlaceholderSignerSubstituteFromInfoInputInfo.md) |  |  |
| **signature_level** | **String** |  | [optional][default to &#39;electronic_signature&#39;] |
| **signature_authentication_mode** | **String** |  | [optional] |
| **redirect_urls** | [**FromScratch1RedirectUrls**](FromScratch1RedirectUrls.md) |  | [optional] |
| **custom_text** | [**SignatureRequestSignerFromInfoInputCustomText**](SignatureRequestSignerFromInfoInputCustomText.md) |  | [optional] |
| **delivery_mode** | [**SignerDeliveryMode**](SignerDeliveryMode.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignatureRequestPlaceholderSignerSubstituteFromInfoInput.new(
  label: Employee,
  info: null,
  signature_level: null,
  signature_authentication_mode: null,
  redirect_urls: null,
  custom_text: null,
  delivery_mode: null
)
```

