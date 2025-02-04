# YousignClientV3::UpdateSignatureRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **delivery_mode** | **String** | Delivery mode to notify signers. | [optional] |
| **ordered_signers** | **Boolean** | Enable an ordered workflow, each signer will be requested to sign in a sequential order | [optional] |
| **reminder_settings** | [**UpdateSignatureRequestReminderSettings**](UpdateSignatureRequestReminderSettings.md) |  | [optional] |
| **timezone** | **String** | Time zone of the dates and times displayed in emails, the Signature Request expiration date, and the PDF Audit Trail. Format: tz database. Default is set to Europe/Paris. | [optional][default to &#39;Europe/Paris&#39;] |
| **email_custom_note** | **String** |  | [optional] |
| **expiration_date** | **Date** | Due date of the signature request (yyyy-mm-dd). | [optional] |
| **external_id** | **String** |  | [optional] |
| **branding_id** | **String** |  | [optional] |
| **custom_experience_id** | **String** | Use a specific Custom Experience to customize the signature experience. | [optional] |
| **signers_allowed_to_decline** | **Boolean** | Allowing signers to decline to sign. | [optional][default to false] |
| **workspace_id** | **String** | Transfer the Signature Request into a given Workspace. | [optional] |
| **audit_trail_locale** | [**AuditTrailLocale**](AuditTrailLocale.md) | Define the locale for the generated audit trail. | [optional] |
| **email_notification** | [**SignatureRequestEmailNotification**](SignatureRequestEmailNotification.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::UpdateSignatureRequest.new(
  name: null,
  delivery_mode: null,
  ordered_signers: null,
  reminder_settings: null,
  timezone: Europe/Paris,
  email_custom_note: Please sign these documents as soon as possible.,
  expiration_date: null,
  external_id: null,
  branding_id: 3a93d3b5-fb3b-4abf-9e70-26315b33506b,
  custom_experience_id: 3a93d3b5-fb3b-4abf-9e70-26315b33506b,
  signers_allowed_to_decline: true,
  workspace_id: 3a93d3b5-fb3b-4abf-9e70-26315b33506b,
  audit_trail_locale: null,
  email_notification: null
)
```

