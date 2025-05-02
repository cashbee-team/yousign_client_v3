# YousignClientV3::MetadataDataValue

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'yousign_client_v3'

YousignClientV3::MetadataDataValue.openapi_one_of
# =>
# [
#   :'Boolean',
#   :'Float',
#   :'Integer',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'yousign_client_v3'

YousignClientV3::MetadataDataValue.build(data)
# => #<Boolean:0x00007fdd4aab02a0>

YousignClientV3::MetadataDataValue.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Boolean`
- `Float`
- `Integer`
- `String`
- `nil` (if no type matches)

