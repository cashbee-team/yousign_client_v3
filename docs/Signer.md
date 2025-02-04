# YousignClientV3::Signer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **info** | [**SignerInfo**](SignerInfo.md) |  |  |
| **status** | **String** |  |  |
| **fields** | [**Array&lt;SignerFieldsInner&gt;**](SignerFieldsInner.md) |  |  |
| **signature_level** | **String** |  | [default to &#39;electronic_signature&#39;] |
| **signature_authentication_mode** | **String** |  |  |
| **signature_link** | **String** |  |  |
| **signature_link_expiration_date** | **Time** |  |  |
| **signature_image_preview** | **String** |  |  |
| **redirect_urls** | [**SignerRedirectUrls**](SignerRedirectUrls.md) |  |  |
| **custom_text** | [**SignerCustomText**](SignerCustomText.md) |  |  |
| **delivery_mode** | **String** |  |  |
| **identification_attestation_id** | **String** |  |  |
| **sms_notification** | [**SmsNotification**](SmsNotification.md) |  |  |
| **email_notification** | [**EmailNotification**](EmailNotification.md) |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Signer.new(
  id: null,
  info: null,
  status: null,
  fields: null,
  signature_level: null,
  signature_authentication_mode: null,
  signature_link: null,
  signature_link_expiration_date: 2024-01-18T22:59Z,
  signature_image_preview: null,
  redirect_urls: null,
  custom_text: null,
  delivery_mode: null,
  identification_attestation_id: null,
  sms_notification: null,
  email_notification: null
)
```

