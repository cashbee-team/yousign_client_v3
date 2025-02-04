# YousignClientV3::SignatureRequestPlaceholderSignerSubstituteFromUserIdInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** |  |  |
| **user_id** | **String** | Create signer from an existing user |  |
| **signature_level** | **String** |  | [optional][default to &#39;electronic_signature&#39;] |
| **signature_authentication_mode** | **String** |  | [optional] |
| **redirect_urls** | [**FromScratch1RedirectUrls**](FromScratch1RedirectUrls.md) |  | [optional] |
| **custom_text** | [**SignatureRequestSignerFromInfoInputCustomText**](SignatureRequestSignerFromInfoInputCustomText.md) |  | [optional] |
| **delivery_mode** | [**SignerDeliveryMode**](SignerDeliveryMode.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignatureRequestPlaceholderSignerSubstituteFromUserIdInput.new(
  label: Employee,
  user_id: 8b6ed2f3-244f-487a-baa1-bbe4f51c8744,
  signature_level: null,
  signature_authentication_mode: null,
  redirect_urls: null,
  custom_text: null,
  delivery_mode: null
)
```

