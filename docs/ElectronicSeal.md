# YousignClientV3::ElectronicSeal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **document_id** | **String** |  |  |
| **timestamp** | **Boolean** |  |  |
| **image_id** | **String** |  |  |
| **external_id** | **String** | Store a custom id that will be added to webhooks |  |
| **signature_level** | **String** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::ElectronicSeal.new(
  id: 1365283d-0ba5-4a08-9a58-9818ef428320,
  status: pending,
  created_at: 2024-01-18T22:59Z,
  document_id: 37646975-7e73-41f1-be7f-f4d85d181d03,
  timestamp: null,
  image_id: 6c82bd7a-d7f7-45e0-82f4-b92222567346,
  external_id: externalId-123,
  signature_level: electronic_signature
)
```

