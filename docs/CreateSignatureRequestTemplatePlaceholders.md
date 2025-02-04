# YousignClientV3::CreateSignatureRequestTemplatePlaceholders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signers** | [**Array&lt;CreateSignatureRequestTemplatePlaceholdersSignersInner&gt;**](CreateSignatureRequestTemplatePlaceholdersSignersInner.md) | Substituting data for placeholder signers. | [optional] |
| **read_only_text_fields** | [**Array&lt;SignatureRequestPlaceholderReadOnlyTextFieldSubstituteInput&gt;**](SignatureRequestPlaceholderReadOnlyTextFieldSubstituteInput.md) | Substituting data for placeholder read_only_text fields. | [optional] |

## Example

```ruby
require 'yousign_client_v3'

instance = YousignClientV3::CreateSignatureRequestTemplatePlaceholders.new(
  signers: null,
  read_only_text_fields: null
)
```

