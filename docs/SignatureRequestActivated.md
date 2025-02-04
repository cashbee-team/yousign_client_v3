# YousignClientV3::SignatureRequestActivated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **name** | **String** |  |  |
| **delivery_mode** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **ordered_signers** | **Boolean** | Enable an ordered workflow, each signer will be requested to sign in a sequential order |  |
| **reminder_settings** | [**SignatureRequestInListReminderSettings**](SignatureRequestInListReminderSettings.md) |  |  |
| **timezone** | **String** | Time zone of the dates and times displayed in emails, the Signature Request expiration date, and the PDF Audit Trail. Format: tz database. Default is set to Europe/Paris. | [default to &#39;Europe/Paris&#39;] |
| **email_custom_note** | **String** |  |  |
| **expiration_date** | **Time** |  |  |
| **signers** | [**Array&lt;EmbeddedSignerWithSignatureLink&gt;**](EmbeddedSignerWithSignatureLink.md) |  |  |
| **approvers** | [**Array&lt;ApproverToNotify&gt;**](ApproverToNotify.md) |  | [optional] |
| **labels** | [**Array&lt;SignatureRequestInListLabelsInner&gt;**](SignatureRequestInListLabelsInner.md) | Labels associated to the Signature Request | [optional] |
| **documents** | [**Array&lt;SignatureRequestActivatedDocumentsInner&gt;**](SignatureRequestActivatedDocumentsInner.md) |  |  |
| **external_id** | **String** |  |  |
| **branding_id** | **String** |  |  |
| **custom_experience_id** | **String** |  |  |
| **audit_trail_locale** | [**AuditTrailLocale**](AuditTrailLocale.md) |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignatureRequestActivated.new(
  id: 89120884-d29a-4b1a-ac7b-a9e73a872795,
  status: null,
  name: signature request name,
  delivery_mode: null,
  created_at: 2024-01-18T22:59Z,
  ordered_signers: null,
  reminder_settings: null,
  timezone: Europe/Paris,
  email_custom_note: Please sign these documents as soon as possible.,
  expiration_date: 2024-01-18T22:59Z,
  signers: null,
  approvers: null,
  labels: null,
  documents: null,
  external_id: null,
  branding_id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  custom_experience_id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  audit_trail_locale: null
)
```

