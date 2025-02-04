# YousignClientV3::CreateContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **email** | **String** |  |  |
| **locale** | [**Locale**](Locale.md) |  |  |
| **phone_number** | **String** | E.164 format | [optional] |
| **company_name** | **String** | This property cannot start or end with whitespace, does not allow HTML tags, URL or email. | [optional] |
| **job_title** | **String** | This property cannot start or end with whitespace, does not allow HTML tags, URL or email. | [optional] |
| **address_line_1** | **String** | This property cannot start or end with whitespace, does not allow HTML tags, URL or email. | [optional] |
| **address_line_2** | **String** | This property cannot start or end with whitespace, does not allow HTML tags, URL or email. | [optional] |
| **address_city** | **String** | This property cannot start or end with whitespace, does not allow HTML tags, URL or email. | [optional] |
| **address_postal_code** | **String** | This property cannot start or end with whitespace, does not allow HTML tags, URL or email. | [optional] |
| **address_country** | **String** | This property cannot start or end with whitespace, does not allow HTML tags, URL or email. | [optional] |
| **workspace_id** | **String** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateContact.new(
  first_name: John,
  last_name: Doe,
  email: john.doe@example.com,
  locale: null,
  phone_number: +41446667700,
  company_name: Yousign SAS,
  job_title: Developer,
  address_line_1: 34 Rue Malfilatre,
  address_line_2: 1st floor,
  address_city: Caen,
  address_postal_code: 14000,
  address_country: France,
  workspace_id: 69120884-d29a-4b1a-ac7b-a9e73a872795
)
```

