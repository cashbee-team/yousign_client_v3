# YousignClientV3::AddonConsumption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **start_at** | **Time** | Beginning of the addon subscription |  |
| **end_at** | **Time** | End of the addon subscription |  |
| **quota** | **Integer** |  |  |
| **consumed** | **Integer** |  |  |
| **provisioned** | **Integer** | Only available for qualified_electronic_signature_identity_verification and qualified_electronic_signature_saved_identity addons | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::AddonConsumption.new(
  name: null,
  start_at: 2020-05-18T07:25:36Z,
  end_at: 2020-05-18T07:25:36Z,
  quota: null,
  consumed: null,
  provisioned: null
)
```

