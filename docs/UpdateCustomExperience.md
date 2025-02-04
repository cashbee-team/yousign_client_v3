# YousignClientV3::UpdateCustomExperience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **landing_page_disabled** | **Boolean** |  | [optional] |
| **side_panel_disabled** | **Boolean** |  | [optional] |
| **background_color** | **String** | Hexadecimal color value | [optional] |
| **button_color** | **String** | Hexadecimal color value | [optional] |
| **text_color** | **String** | Hexadecimal color value | [optional] |
| **text_button_color** | **String** | Hexadecimal color value | [optional] |
| **disabled_notifications** | [**Array&lt;CustomExperienceDisabledNotificationsType&gt;**](CustomExperienceDisabledNotificationsType.md) |  | [optional] |
| **email_logo_disabled** | **Boolean** |  | [optional] |
| **email_header_text_disabled** | **Boolean** |  | [optional] |
| **email_footer_signature_disabled** | **Boolean** |  | [optional] |
| **email_expiration_text_disabled** | **Boolean** |  | [optional] |
| **recipients_activity_disabled** | **Boolean** |  | [optional] |
| **download_documents_disabled** | **Boolean** | If false, signers won&#39;t be able to download documents before signing. | [optional] |
| **redirect_urls** | [**UpdateCustomExperienceRedirectUrls**](UpdateCustomExperienceRedirectUrls.md) |  | [optional] |
| **logo_layout** | [**LogoLayout**](LogoLayout.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::UpdateCustomExperience.new(
  name: null,
  landing_page_disabled: null,
  side_panel_disabled: null,
  background_color: #ff0011,
  button_color: #ff0011,
  text_color: #ff0011,
  text_button_color: #ff0011,
  disabled_notifications: null,
  email_logo_disabled: null,
  email_header_text_disabled: null,
  email_footer_signature_disabled: null,
  email_expiration_text_disabled: null,
  recipients_activity_disabled: null,
  download_documents_disabled: null,
  redirect_urls: null,
  logo_layout: null
)
```

