# YousignClientV3::SignatureRequestEmailNotification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | [**SignatureRequestEmailNotificationSender**](SignatureRequestEmailNotificationSender.md) |  |  |
| **custom_note** | **String** |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::SignatureRequestEmailNotification.new(
  sender: null,
  custom_note: Please sign these documents as soon as possible.
)
```

