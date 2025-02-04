# YousignClientV3::UpdateSigner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **info** | [**UpdateSignerInfo**](UpdateSignerInfo.md) |  | [optional] |
| **insert_after_id** | **String** |  | [optional] |
| **signature_level** | **String** |  | [optional][default to &#39;electronic_signature&#39;] |
| **signature_authentication_mode** | **String** |  | [optional] |
| **redirect_urls** | [**FromScratch1RedirectUrls**](FromScratch1RedirectUrls.md) |  | [optional] |
| **custom_text** | [**FromScratch1CustomText**](FromScratch1CustomText.md) |  | [optional] |
| **delivery_mode** | [**SignerDeliveryMode**](SignerDeliveryMode.md) |  | [optional] |
| **identification_attestation_id** | **String** |  | [optional] |
| **email_notification** | [**EmailNotification1**](EmailNotification1.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::UpdateSigner.new(
  info: null,
  insert_after_id: 8b6ed2f3-244f-487a-baa1-bbe4f51c8744,
  signature_level: null,
  signature_authentication_mode: null,
  redirect_urls: null,
  custom_text: null,
  delivery_mode: null,
  identification_attestation_id: null,
  email_notification: null
)
```

