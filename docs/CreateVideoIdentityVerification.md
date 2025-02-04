# YousignClientV3::CreateVideoIdentityVerification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | The first name provided must match exactly as it appears on the ID document, as a consistency check will be performed. If multiple given names are listed on the document, you must provide only one of them. |  |
| **last_name** | **String** | The last name provided must match exactly as it appears on the ID document, as a consistency check will be performed. If both a birth name and a usage name are listed on the document, you must provide one of them, but not both. |  |
| **redirection_url** | **String** | The URL to redirect the person back to your application or website after the identity verification flow is complete. |  |
| **face_recognition** | **Boolean** | Enable face recognition step in the Identity verification flow. | [optional][default to false] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateVideoIdentityVerification.new(
  first_name: John,
  last_name: Doe,
  redirection_url: https://www.redirectionurl.com,
  face_recognition: null
)
```

