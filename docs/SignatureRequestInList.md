# YousignClientV3::SignatureRequestInList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | [**SignatureRequestStatus**](SignatureRequestStatus.md) |  |  |
| **name** | **String** |  |  |
| **delivery_mode** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **ordered_signers** | **Boolean** | Enable an ordered workflow, each signer will be requested to sign in a sequential order |  |
| **reminder_settings** | [**SignatureRequestInListReminderSettings**](SignatureRequestInListReminderSettings.md) |  |  |
| **timezone** | **String** | Time zone of the dates and times displayed in emails, the Signature Request expiration date, and the PDF Audit Trail. Format: tz database. Default is set to Europe/Paris. | [default to &#39;Europe/Paris&#39;] |
| **email_custom_note** | **String** |  |  |
| **expiration_date** | **Time** |  |  |
| **source** | **String** |  |  |
| **signers** | [**Array&lt;SignatureRequestInListSignersInner&gt;**](SignatureRequestInListSignersInner.md) |  |  |
| **approvers** | [**Array&lt;SignatureRequestInListApproversInner&gt;**](SignatureRequestInListApproversInner.md) |  | [optional] |
| **labels** | [**Array&lt;SignatureRequestInListLabelsInner&gt;**](SignatureRequestInListLabelsInner.md) | Labels associated to the Signature Request | [optional] |
| **documents** | [**Array&lt;SignatureRequestInListDocumentsInner&gt;**](SignatureRequestInListDocumentsInner.md) |  |  |
| **sender** | [**SignatureRequestInListSender**](SignatureRequestInListSender.md) |  |  |
| **external_id** | **String** |  |  |
| **branding_id** | **String** |  |  |
| **custom_experience_id** | **String** |  |  |
| **signers_allowed_to_decline** | **Boolean** |  |  |
| **workspace_id** | **String** |  | [optional] |
| **audit_trail_locale** | [**AuditTrailLocale**](AuditTrailLocale.md) |  |  |
| **bulk_send_batch_id** | **String** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignatureRequestInList.new(
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
  source: null,
  signers: null,
  approvers: null,
  labels: null,
  documents: null,
  sender: null,
  external_id: An_external-ID,
  branding_id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  custom_experience_id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  signers_allowed_to_decline: true,
  workspace_id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  audit_trail_locale: null,
  bulk_send_batch_id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c
)
```

