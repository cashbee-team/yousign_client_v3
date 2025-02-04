# YousignClientV3::UpdateField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signer_id** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **x** | **Integer** |  | [optional] |
| **y** | **Integer** |  | [optional] |
| **height** | **Integer** | The height must be 24 or a multiple of 15 greater than 24. If height is not provided, it will be calculated depending on the number of newlines in the mention. | [optional] |
| **width** | **Integer** | If not set, the width is automatically calculated with the mention length. | [optional] |
| **reason** | **String** | Provide extra context to explain why the Document is being signed. Once the Document is signed, the custom reason is stored in the Audit Trail and is included in the signature certificate. The default value is: \&quot;Signed by [Signer first name] [Signer last name]\&quot;.  | [optional] |
| **mention** | **String** |  | [optional] |
| **font** | [**UpdateFieldFont**](UpdateFieldFont.md) |  | [optional] |
| **max_length** | **Integer** |  | [optional] |
| **question** | **String** | If you don&#39;t want any question, you can give an empty string. | [optional] |
| **instruction** | **String** |  | [optional] |
| **optional** | **Boolean** |  | [optional][default to false] |
| **size** | **Integer** |  | [optional][default to 24] |
| **name** | **String** | Radio group&#39;s name | [optional] |
| **checked** | **Boolean** |  | [optional][default to false] |
| **radios** | [**Array&lt;RadioGroup1RadiosInner&gt;**](RadioGroup1RadiosInner.md) |  | [optional] |
| **text** | **String** |  | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::UpdateField.new(
  signer_id: 9b6ed2f3-244f-487a-baa1-bbe4f51c8748,
  page: 1,
  x: 400,
  y: 400,
  height: 150,
  width: 24,
  reason: Signed by John Doe,
  mention: Here is a custom mention value.,
  font: null,
  max_length: 150,
  question: Where is Brian?,
  instruction: Give Brian&#39;s location,
  optional: null,
  size: 24,
  name: radio_group_name_1,
  checked: null,
  radios: null,
  text: Order n°12345
)
```

