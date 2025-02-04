# YousignClientV3::FieldRadioButtonGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **document_id** | **String** |  |  |
| **signer_id** | **String** |  |  |
| **type** | **String** |  |  |
| **page** | **Integer** |  |  |
| **optional** | **Boolean** | Does the Signer has to select one of the radio buttons from this group? |  |
| **name** | **String** |  |  |
| **radios** | [**Array&lt;FieldRadioButtonGroupRadiosInner&gt;**](FieldRadioButtonGroupRadiosInner.md) |  |  |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::FieldRadioButtonGroup.new(
  id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  document_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  signer_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  type: null,
  page: null,
  optional: null,
  name: null,
  radios: null
)
```

