# YousignClientV3::GetIdDocumentVerification200ResponseAllOfExtractedFromDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | The holder first name |  |
| **birth_name** | **String** | The holder birth name |  |
| **last_name** | **String** | The holder last name |  |
| **birth_date** | **Date** | Birth date on the document |  |
| **birth_place** | **String** | The holder birth place |  |
| **gender** | **String** | The holder gender. \&quot;m\&quot; Masculine, \&quot;f\&quot; Feminine, \&quot;x\&quot; Non defined. |  |
| **postal_address** | **String** | The holder postal address |  |
| **document_type** | **String** | The document type |  |
| **document_issuing_country** | **String** | Issuance country code (2 upper case letters) |  |
| **document_issuing_date** | **Date** | Document issuance date |  |
| **document_expiration_date** | **Date** | Document legal expiration date |  |
| **document_number** | **String** | Document identifier number (may contain letters) |  |
| **mrz** | [**GetIdDocumentVerification200ResponseAllOfExtractedFromDocumentMrz**](GetIdDocumentVerification200ResponseAllOfExtractedFromDocumentMrz.md) |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::GetIdDocumentVerification200ResponseAllOfExtractedFromDocument.new(
  first_name: John,
  birth_name: Doe,
  last_name: Doe,
  birth_date: Thu Jan 18 00:00:00 UTC 2024,
  birth_place: Paris,
  gender: f,
  postal_address: 13 RUE SAINT MARCELIN
MARSEILLE 10E (13),
  document_type: id_card,
  document_issuing_country: US,
  document_issuing_date: Thu Jan 18 00:00:00 UTC 2024,
  document_expiration_date: Thu Jan 18 00:00:00 UTC 2024,
  document_number: X4RTBPFW4,
  mrz: null
)
```

