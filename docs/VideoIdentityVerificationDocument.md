# YousignClientV3::VideoIdentityVerificationDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **full_name** | **String** | Full name on the document | [optional] |
| **birth_at** | **Time** | Date of birth on the document | [optional] |
| **document_type** | **String** | Type of document. | [optional] |
| **document_issuing_country** | **String** |  | [optional] |
| **front_image_url** | **String** | Temporary public link to the front image. Available for 10 minutes. | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::VideoIdentityVerificationDocument.new(
  full_name: David Vincent,
  birth_at: 2024-01-18T22:59Z,
  document_type: null,
  document_issuing_country: US,
  front_image_url: https://storage-b.env.ubble.ai/ubble-ai/88bf48f0-ce4a-449c-9af1-f138a7e09392/ae1f813a-02cf-4ffc-bf71-d823ed74dc8d/bb603e2f-5de9-40f2-9631-8285a33c24c0/tight_crops/aaa.png?X-Amz-Date&#x3D;20230327T163228Z&amp;X-Amz-Expires&#x3D;3600&amp;X-Amz-SignedHeaders&#x3D;host&amp;X-Amz-Signature&#x3D;xxx
)
```

