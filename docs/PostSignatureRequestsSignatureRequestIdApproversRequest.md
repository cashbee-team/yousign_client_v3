# YousignClientV3::PostSignatureRequestsSignatureRequestIdApproversRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'yousign_client_v3'

YousignClientV3::PostSignatureRequestsSignatureRequestIdApproversRequest.openapi_one_of
# =>
# [
#   :'FromExistingContact',
#   :'FromExistingSigner',
#   :'FromExistingUser',
#   :'FromScratch'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'yousign_client_v3'

YousignClientV3::PostSignatureRequestsSignatureRequestIdApproversRequest.build(data)
# => #<FromExistingContact:0x00007fdd4aab02a0>

YousignClientV3::PostSignatureRequestsSignatureRequestIdApproversRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `FromExistingContact`
- `FromExistingSigner`
- `FromExistingUser`
- `FromScratch`
- `nil` (if no type matches)

