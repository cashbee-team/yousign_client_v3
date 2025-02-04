# YousignClientV3::GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'yousign_client_v3'

YousignClientV3::GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner.openapi_one_of
# =>
# [
#   :'FieldCheckbox',
#   :'FieldMention',
#   :'FieldRadioButtonGroup',
#   :'FieldReadOnlyText',
#   :'FieldSignature',
#   :'FieldText'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'yousign_client_v3'

YousignClientV3::GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner.build(data)
# => #<FieldCheckbox:0x00007fdd4aab02a0>

YousignClientV3::GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `FieldCheckbox`
- `FieldMention`
- `FieldRadioButtonGroup`
- `FieldReadOnlyText`
- `FieldSignature`
- `FieldText`
- `nil` (if no type matches)

