# YousignClientV3::FromExistingContact1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | Create signer from an existing contact |  |
| **fields** | [**Array&lt;FieldsInput&gt;**](FieldsInput.md) |  | [optional] |
| **insert_after_id** | **String** | Insert just after the position of the specified signer id | [optional] |
| **signature_level** | **String** |  |  |
| **signature_authentication_mode** | **String** |  | [optional] |
| **redirect_urls** | [**FromScratch1RedirectUrls**](FromScratch1RedirectUrls.md) |  | [optional] |
| **custom_text** | [**FromScratch1CustomText**](FromScratch1CustomText.md) |  | [optional] |
| **delivery_mode** | [**SignerDeliveryMode**](SignerDeliveryMode.md) |  | [optional] |
| **identification_attestation_id** | **String** |  | [optional] |
| **sms_notification** | [**SmsNotification1**](SmsNotification1.md) |  | [optional] |
| **email_notification** | [**EmailNotification1**](EmailNotification1.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::FromExistingContact1.new(
  contact_id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  fields: null,
  insert_after_id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  signature_level: null,
  signature_authentication_mode: null,
  redirect_urls: null,
  custom_text: null,
  delivery_mode: null,
  identification_attestation_id: null,
  sms_notification: null,
  email_notification: null
)
```

