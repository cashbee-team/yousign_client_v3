# YousignClientV3::CreateSignerConsentRequestSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Text associated to the checkbox or the text_to_copy. This property cannot start or end with whitespace, does not allow html tags or email. This property cannot contain url for text_to_copy type.  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateSignerConsentRequestSettings.new(
  text: I agree with...
)
```

