# YousignClientV3::CreateWorkspace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **external_name** | **String** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateWorkspace.new(
  name: Sales,
  external_name: UK Sales
)
```

