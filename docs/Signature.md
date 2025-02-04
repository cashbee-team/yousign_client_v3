# YousignClientV3::Signature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signer_id** | **String** |  |  |
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

instance = YousignClientV3::Signature.new(
  signer_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  type: null,
  page: 1,
  x: 200,
  y: 400,
  height: 37,
  width: 150,
  reason: Signed by John Doe
)
```

