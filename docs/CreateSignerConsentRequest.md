# YousignClientV3::CreateSignerConsentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the Signer Consent Request |  |
| **settings** | [**CreateSignerConsentRequestSettings**](CreateSignerConsentRequestSettings.md) |  |  |
| **optional** | **Boolean** | Define if the Signer Consent Request is optional for Signers |  |
| **signer_ids** | **Array&lt;String&gt;** | Ids of Signers to request a consent |  |
| **insert_after_id** | **String** | Insert just after the position of the specified Signer Consent Request id | [optional] |
| **document_id** | **String** | Link the Signer Consent Request to a given Document by its id. | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateSignerConsentRequest.new(
  type: checkbox,
  settings: null,
  optional: false,
  signer_ids: [&quot;71517741-a4a8-4f25-8496-6e9c6d2b7791&quot;,&quot;0c42e1ae-1cac-457b-9a09-5fda5f735bd8&quot;],
  insert_after_id: null,
  document_id: null
)
```

