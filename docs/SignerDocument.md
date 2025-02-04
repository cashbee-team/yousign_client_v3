# YousignClientV3::SignerDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the signer document |  |
| **title** | **String** | Title of the document request |  |
| **filename** | **String** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignerDocument.new(
  id: 69df8404-40d3-4686-887b-5678f46a0d9a,
  title: Proof of address,
  filename: null
)
```

