# YousignClientV3::CreateSignatureRequestTemplatePlaceholdersSignersInner

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
| **user_id** | **String** | Create signer from an existing user |  |
| **contact_id** | **String** | Create signer from an existing contact |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateSignatureRequestTemplatePlaceholdersSignersInner.new(
  label: Employee,
  info: null,
  signature_level: null,
  signature_authentication_mode: null,
  redirect_urls: null,
  custom_text: null,
  delivery_mode: null,
  user_id: 8b6ed2f3-244f-487a-baa1-bbe4f51c8744,
  contact_id: ddecfb85-8a45-4254-b940-6171b8df0a90
)
```

