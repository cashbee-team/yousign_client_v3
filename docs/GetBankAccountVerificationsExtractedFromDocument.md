# YousignClientV3::GetBankAccountVerificationsExtractedFromDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iban** | **String** | International Bank Account Number (IBAN) | [optional] |
| **bic** | **String** | Business Identifier Codes (BIC) | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::GetBankAccountVerificationsExtractedFromDocument.new(
  iban: FR7610278030060001478474080,
  bic: CMCIFR2A
)
```

