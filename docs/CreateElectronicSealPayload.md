# YousignClientV3::CreateElectronicSealPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** | Specify which Electronic Seal Document to use for creating an Electronic Seal. |  |
| **image_id** | **String** | Specify which Electronic Seal Image to use for creating an Electronic Seal. | [optional] |
| **external_id** | **String** | Store a custom id that will be added to webhooks | [optional] |
| **fields** | [**Array&lt;CreateElectronicSealPayloadFieldsInner&gt;**](CreateElectronicSealPayloadFieldsInner.md) |  |  |
| **signature_level** | **String** |  | [optional] |
| **certificate_id** | **String** | Specify which certificate to use for creating an Electronic Seal (only available for advanced_electronic_signature level). | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateElectronicSealPayload.new(
  document_id: 160473f9-156f-4583-848c-cbc3dec49b4a,
  image_id: 333fa90a-a629-4708-8fe9-160dcb055a9b,
  external_id: externalId-123,
  fields: null,
  signature_level: null,
  certificate_id: a3d84df7-b45e-4321-ae9e-7f5397acb225
)
```

