# YousignClientV3::CreateElectronicSealFieldReadOnlyTextPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **height** | **Integer** |  |  |
| **width** | **Integer** |  |  |
| **page** | **Integer** |  |  |
| **x** | **Integer** |  |  |
| **y** | **Integer** |  |  |
| **text** | **String** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateElectronicSealFieldReadOnlyTextPayload.new(
  type: read_only_text,
  height: 200,
  width: 250,
  page: 1,
  x: 0,
  y: 0,
  text: null
)
```

