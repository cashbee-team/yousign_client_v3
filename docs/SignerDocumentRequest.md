# YousignClientV3::SignerDocumentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the Signer Document Request |  |
| **title** | **String** | Title of the document request |  |
| **optional** | **Boolean** | Define if the document request is optional for the Signers |  |
| **signer_ids** | **Array&lt;String&gt;** | Ids of Signers to request a document |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignerDocumentRequest.new(
  id: 69df8404-40d3-4686-887b-5678f46a0d9a,
  title: Proof of address,
  optional: null,
  signer_ids: null
)
```

