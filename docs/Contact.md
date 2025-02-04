# YousignClientV3::Contact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **first_name** | **String** |  |  |
| **last_name** | **String** |  |  |
| **email** | **String** |  |  |
| **locale** | **String** |  |  |
| **phone_number** | **String** | E.164 format |  |
| **company_name** | **String** |  |  |
| **job_title** | **String** |  |  |
| **address_line_1** | **String** |  |  |
| **address_line_2** | **String** |  |  |
| **address_city** | **String** |  |  |
| **address_postal_code** | **String** |  |  |
| **address_country** | **String** |  |  |
| **workspace_id** | **String** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Contact.new(
  id: null,
  first_name: null,
  last_name: null,
  email: null,
  locale: null,
  phone_number: null,
  company_name: null,
  job_title: null,
  address_line_1: null,
  address_line_2: null,
  address_city: null,
  address_postal_code: null,
  address_country: null,
  workspace_id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c
)
```

