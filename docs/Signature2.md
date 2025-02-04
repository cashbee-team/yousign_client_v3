# YousignClientV3::Signature2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **type** | **String** |  |  |
| **page** | **Integer** |  |  |
| **x** | **Integer** |  |  |
| **y** | **Integer** |  |  |
| **height** | **Integer** | Default value is 37 | [optional] |
| **width** | **Integer** | Default value is 85 | [optional] |
| **reason** | **String** | Provide extra context to explain why the Document is being signed. Once the Document is signed, the custom reason is stored in the Audit Trail and is included in the signature certificate. The default value is: \&quot;Signed by [Signer first name] [Signer last name]\&quot;.  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Signature2.new(
  document_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  type: null,
  page: null,
  x: null,
  y: null,
  height: null,
  width: null,
  reason: Signed by John Doe
)
```

