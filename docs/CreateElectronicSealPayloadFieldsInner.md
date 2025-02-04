# YousignClientV3::CreateElectronicSealPayloadFieldsInner

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
| **text** | **String** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateElectronicSealPayloadFieldsInner.new(
  type: seal,
  height: 200,
  width: 250,
  page: 1,
  x: 0,
  y: 0,
  reason: null,
  text: null
)
```

