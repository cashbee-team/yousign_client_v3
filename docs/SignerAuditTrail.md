# YousignClientV3::SignerAuditTrail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Float** |  |  |
| **signature_request** | **Object** |  |  |
| **sender** | **Object** |  |  |
| **signer** | **Object** |  |  |
| **documents** | **Array&lt;Object&gt;** |  |  |
| **organization** | **Object** |  |  |
| **authentication** | **Object** |  |  |
| **electronic_signature_level** | **Object** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignerAuditTrail.new(
  version: null,
  signature_request: null,
  sender: null,
  signer: null,
  documents: null,
  organization: null,
  authentication: null,
  electronic_signature_level: null
)
```

