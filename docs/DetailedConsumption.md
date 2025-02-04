# YousignClientV3::DetailedConsumption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** |  |  |
| **type** | **String** |  |  |
| **level** | **String** | Only set when type is either &#x60;invited_signer&#x60;, &#x60;electronic_seals&#x60;, &#x60;identification_attempts&#x60;.  | [optional] |
| **identification_mode** | **String** | Only set if type is identification_attempts. | [optional] |
| **workspace_id** | **String** | Only set if breakdown is set on workspaces. | [optional] |
| **value** | **Integer** | Count of items or file size in case of archiving. |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::DetailedConsumption.new(
  source: null,
  type: null,
  level: null,
  identification_mode: null,
  workspace_id: 8b6ed2f3-244f-487a-baa1-bbe4f51c8744,
  value: null
)
```

