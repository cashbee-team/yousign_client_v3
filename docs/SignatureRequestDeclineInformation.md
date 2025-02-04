# YousignClientV3::SignatureRequestDeclineInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signer_id** | **String** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **declined_at** | **Time** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignatureRequestDeclineInformation.new(
  signer_id: 9a93d3b5-fb3b-4abf-9e70-26315b33506c,
  reason: null,
  declined_at: 2024-01-18T22:59Z
)
```

