# YousignClientV3::SignerConsentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the Signer Consent Request | [readonly] |
| **type** | **String** | Type of the Signer Consent Request |  |
| **settings** | [**SignerConsentRequestSettings**](SignerConsentRequestSettings.md) |  |  |
| **optional** | **Boolean** | Define if the Signer Consent Request is optional for Signers |  |
| **signer_ids** | **Array&lt;String&gt;** | Ids of Signers to request a consent |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignerConsentRequest.new(
  id: 69df8404-40d3-4686-887b-5678f46a0d9a,
  type: checkbox,
  settings: null,
  optional: false,
  signer_ids: [&quot;71517741-a4a8-4f25-8496-6e9c6d2b7791&quot;,&quot;0c42e1ae-1cac-457b-9a09-5fda5f735bd8&quot;]
)
```

