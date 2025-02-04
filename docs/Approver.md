# YousignClientV3::Approver

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **info** | [**ApproverInfo**](ApproverInfo.md) |  |  |
| **approval_link** | **String** |  | [optional] |
| **approval_link_expiration_date** | **Time** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::Approver.new(
  id: 8b6ed2f3-244f-487a-baa1-bbe4f51c8744,
  status: null,
  info: null,
  approval_link: null,
  approval_link_expiration_date: 2024-01-18T22:59Z
)
```

