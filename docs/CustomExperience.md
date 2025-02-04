# YousignClientV3::CustomExperience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [readonly] |
| **name** | **String** |  | [optional] |
| **landing_page_disabled** | **Boolean** |  |  |
| **side_panel_disabled** | **Boolean** |  |  |
| **background_color** | **String** |  |  |
| **button_color** | **String** |  |  |
| **text_color** | **String** |  |  |
| **text_button_color** | **String** |  |  |
| **disabled_notifications** | [**Array&lt;CustomExperienceDisabledNotificationsType&gt;**](CustomExperienceDisabledNotificationsType.md) |  |  |
| **email_logo_disabled** | **Boolean** |  |  |
| **email_header_text_disabled** | **Boolean** |  |  |
| **email_footer_signature_disabled** | **Boolean** |  |  |
| **email_expiration_text_disabled** | **Boolean** |  |  |
| **recipients_activity_disabled** | **Boolean** |  |  |
| **download_documents_disabled** | **Boolean** |  |  |
| **redirect_urls** | [**CustomExperienceRedirectUrls**](CustomExperienceRedirectUrls.md) |  |  |
| **logo** | **String** |  |  |
| **source** | [**CustomExperienceSource**](CustomExperienceSource.md) |  |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CustomExperience.new(
  id: null,
  name: null,
  landing_page_disabled: null,
  side_panel_disabled: null,
  background_color: null,
  button_color: null,
  text_color: null,
  text_button_color: null,
  disabled_notifications: null,
  email_logo_disabled: null,
  email_header_text_disabled: null,
  email_footer_signature_disabled: null,
  email_expiration_text_disabled: null,
  recipients_activity_disabled: null,
  download_documents_disabled: null,
  redirect_urls: null,
  logo: https://yousign.com/custom_experience/89120884-d29a-4b1a-ac7b-a9e73a872795/logo,
  source: null,
  created_at: 2024-01-18T22:59Z
)
```

