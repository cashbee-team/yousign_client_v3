# YousignClientV3::CreateDocumentFromJson

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **electronic_seal_document_id** | **String** | Id of the Electronic Seal Document. The Electronic Seal must be done to use its Electronic Seal Document. |  |
| **name** | **String** |  | [optional] |
| **nature** | **String** |  |  |
| **insert_after_id** | **String** | Insert just after the position of the specified Document id. | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateDocumentFromJson.new(
  electronic_seal_document_id: 672a5a0b-ac65-407e-9da9-d34402bae974,
  name: file1,
  nature: signable_document,
  insert_after_id: 8b6ed2f3-244f-487a-baa1-bbe4f51c8744
)
```

