# YousignClientV3::CreateElectronicSealFieldSealPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **height** | **Integer** |  |  |
| **width** | **Integer** |  |  |
| **page** | **Integer** |  |  |
| **x** | **Integer** |  |  |
| **y** | **Integer** |  |  |
| **reason** | **String** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateElectronicSealFieldSealPayload.new(
  type: seal,
  height: 200,
  width: 250,
  page: 1,
  x: 0,
  y: 0,
  reason: null
)
```

