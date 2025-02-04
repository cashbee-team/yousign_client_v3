# YousignClientV3::UpdateDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nature** | **String** | Files in JPEG, JPG, and PNG format can only be of attachment nature. | [optional] |
| **insert_after_id** | **String** | Insert just after the position of the specified document id | [optional] |
| **password** | **String** | The password required to unlock the document if it is protected | [optional] |
| **name** | **String** | The new name to be assigned to the document. This value should contain any characters except \&quot;\\\&quot;, \&quot;/\&quot; and can\\&#39;t start and finish with a space. | [optional] |
| **initials** | [**InitialsArea**](InitialsArea.md) |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::UpdateDocument.new(
  nature: null,
  insert_after_id: 8b6ed2f3-244f-487a-baa1-bbe4f51c8744,
  password: MyPa$$word,
  name: file1,
  initials: null
)
```

