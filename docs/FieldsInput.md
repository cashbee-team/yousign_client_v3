# YousignClientV3::FieldsInput

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'yousign_client_v3'

YousignClientV3::FieldsInput.openapi_one_of
# =>
# [
#   :'Checkbox2',
#   :'Mention2',
#   :'RadioGroup2',
#   :'Signature2',
#   :'Text2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'yousign_client_v3'

YousignClientV3::FieldsInput.build(data)
# => #<Checkbox2:0x00007fdd4aab02a0>

YousignClientV3::FieldsInput.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Checkbox2`
- `Mention2`
- `RadioGroup2`
- `Signature2`
- `Text2`
- `nil` (if no type matches)

