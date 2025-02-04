# YousignClientV3::CreateCustomExperience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | This property cannot start or end with whitespace, does not allow HTML tags, URL or email. |  |
| **landing_page_disabled** | **Boolean** |  | [optional][default to false] |
| **side_panel_disabled** | **Boolean** |  | [optional][default to false] |
| **background_color** | **String** | Hexadecimal color value | [optional] |
| **button_color** | **String** | Hexadecimal color value | [optional] |
| **text_color** | **String** | Hexadecimal color value | [optional] |
| **text_button_color** | **String** | Hexadecimal color value | [optional] |
| **disabled_notifications** | [**Array&lt;CustomExperienceDisabledNotificationsType&gt;**](CustomExperienceDisabledNotificationsType.md) |  | [optional] |
| **email_logo_disabled** | **Boolean** |  | [optional][default to false] |
| **email_header_text_disabled** | **Boolean** |  | [optional][default to false] |
| **email_footer_signature_disabled** | **Boolean** |  | [optional][default to false] |
| **email_expiration_text_disabled** | **Boolean** |  | [optional][default to false] |
| **recipients_activity_disabled** | **Boolean** |  | [optional][default to true] |
| **download_documents_disabled** | **Boolean** | If false, signers won&#39;t be able to download documents before signing. | [optional][default to false] |
| **redirect_urls** | [**CreateCustomExperienceRedirectUrls**](CreateCustomExperienceRedirectUrls.md) |  | [optional] |
| **logo_layout** | [**LogoLayout**](LogoLayout.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateCustomExperience.new(
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

