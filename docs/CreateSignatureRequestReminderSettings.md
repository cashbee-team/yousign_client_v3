# YousignClientV3::CreateSignatureRequestReminderSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **interval_in_days** | **Integer** |  |  |
| **max_occurrences** | **Integer** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateSignatureRequestReminderSettings.new(
  interval_in_days: null,
  max_occurrences: 5
)
```

