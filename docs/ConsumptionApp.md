# YousignClientV3::ConsumptionApp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **electronic_signature** | **Integer** |  |  |
| **advanced_electronic_signature** | **Integer** |  |  |
| **advanced_electronic_signature_with_qualified_certificate** | **Integer** |  |  |
| **qualified_electronic_signature_identification_mode** | [**ConsumptionAppQualifiedElectronicSignatureIdentificationMode**](ConsumptionAppQualifiedElectronicSignatureIdentificationMode.md) |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::ConsumptionApp.new(
  electronic_signature: null,
  advanced_electronic_signature: null,
  advanced_electronic_signature_with_qualified_certificate: null,
  qualified_electronic_signature_identification_mode: null
)
```

