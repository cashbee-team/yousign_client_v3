# YousignClientV3::FieldApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_signature_requests_signature_request_id_documents_document_id_fields_field_id**](FieldApi.md#delete_signature_requests_signature_request_id_documents_document_id_fields_field_id) | **DELETE** /signature_requests/{signatureRequestId}/documents/{documentId}/fields/{fieldId} | Delete a Field |
| [**get_signature_requests_signature_request_id_documents_document_id_fields**](FieldApi.md#get_signature_requests_signature_request_id_documents_document_id_fields) | **GET** /signature_requests/{signatureRequestId}/documents/{documentId}/fields | Lists the Fields of a Signature Request Document. |
| [**post_signature_requests_signature_request_id_documents_document_id_fields**](FieldApi.md#post_signature_requests_signature_request_id_documents_document_id_fields) | **POST** /signature_requests/{signatureRequestId}/documents/{documentId}/fields | Create a new Field on a Document |
| [**update_signature_requests_signature_request_id_documents_document_id_fields_field_id**](FieldApi.md#update_signature_requests_signature_request_id_documents_document_id_fields_field_id) | **PATCH** /signature_requests/{signatureRequestId}/documents/{documentId}/fields/{fieldId} | Update a Field |


## delete_signature_requests_signature_request_id_documents_document_id_fields_field_id

> delete_signature_requests_signature_request_id_documents_document_id_fields_field_id(signature_request_id, document_id, field_id)

Delete a Field

Deletes a given Field from a Document.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::FieldApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id
field_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Field Id

begin
  # Delete a Field
  api_instance.delete_signature_requests_signature_request_id_documents_document_id_fields_field_id(signature_request_id, document_id, field_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling FieldApi->delete_signature_requests_signature_request_id_documents_document_id_fields_field_id: #{e}"
end
```

#### Using the delete_signature_requests_signature_request_id_documents_document_id_fields_field_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_requests_signature_request_id_documents_document_id_fields_field_id_with_http_info(signature_request_id, document_id, field_id)

```ruby
begin
  # Delete a Field
  data, status_code, headers = api_instance.delete_signature_requests_signature_request_id_documents_document_id_fields_field_id_with_http_info(signature_request_id, document_id, field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling FieldApi->delete_signature_requests_signature_request_id_documents_document_id_fields_field_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_id** | **String** | Document Id |  |
| **field_id** | **String** | Field Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests_signature_request_id_documents_document_id_fields

> <GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200Response> get_signature_requests_signature_request_id_documents_document_id_fields(signature_request_id, document_id, opts)

Lists the Fields of a Signature Request Document.

Returns a list of Fields for a given Document. You can limit the number of items returned by using filters.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::FieldApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document ID
opts = {
  types: [YousignClientV3::FieldType::SIGNATURE], # Array<FieldType> | Filter by Field type.
  after: 'after_example', # String | After cursor (pagination)
  limit: 56 # Integer | The limit of items count to retrieve.
}

begin
  # Lists the Fields of a Signature Request Document.
  result = api_instance.get_signature_requests_signature_request_id_documents_document_id_fields(signature_request_id, document_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling FieldApi->get_signature_requests_signature_request_id_documents_document_id_fields: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_documents_document_id_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200Response>, Integer, Hash)> get_signature_requests_signature_request_id_documents_document_id_fields_with_http_info(signature_request_id, document_id, opts)

```ruby
begin
  # Lists the Fields of a Signature Request Document.
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_documents_document_id_fields_with_http_info(signature_request_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling FieldApi->get_signature_requests_signature_request_id_documents_document_id_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_id** | **String** | Document ID |  |
| **types** | [**Array&lt;FieldType&gt;**](FieldType.md) | Filter by Field type. | [optional] |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 100] |

### Return type

[**GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200Response**](GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_signature_requests_signature_request_id_documents_document_id_fields

> <GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner> post_signature_requests_signature_request_id_documents_document_id_fields(signature_request_id, document_id, opts)

Create a new Field on a Document

Adds a Field to a given Document.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::FieldApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document ID
opts = {
  create_field: YousignClientV3::Checkbox.new({signer_id: '9b6ed2f3-244f-487a-baa1-bbe4f51c8748', type: 'checkbox', page: 1, x: 200, y: 400}) # CreateField | 
}

begin
  # Create a new Field on a Document
  result = api_instance.post_signature_requests_signature_request_id_documents_document_id_fields(signature_request_id, document_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling FieldApi->post_signature_requests_signature_request_id_documents_document_id_fields: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_documents_document_id_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner>, Integer, Hash)> post_signature_requests_signature_request_id_documents_document_id_fields_with_http_info(signature_request_id, document_id, opts)

```ruby
begin
  # Create a new Field on a Document
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_documents_document_id_fields_with_http_info(signature_request_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner>
rescue YousignClientV3::ApiError => e
  puts "Error when calling FieldApi->post_signature_requests_signature_request_id_documents_document_id_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_id** | **String** | Document ID |  |
| **create_field** | [**CreateField**](CreateField.md) |  | [optional] |

### Return type

[**GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner**](GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_signature_requests_signature_request_id_documents_document_id_fields_field_id

> <GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner> update_signature_requests_signature_request_id_documents_document_id_fields_field_id(signature_request_id, document_id, field_id, opts)

Update a Field

Updates a given Field. Any parameters not provided are left unchanged.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::FieldApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id
field_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Field Id
opts = {
  update_field: YousignClientV3::UpdateField.new # UpdateField | 
}

begin
  # Update a Field
  result = api_instance.update_signature_requests_signature_request_id_documents_document_id_fields_field_id(signature_request_id, document_id, field_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling FieldApi->update_signature_requests_signature_request_id_documents_document_id_fields_field_id: #{e}"
end
```

#### Using the update_signature_requests_signature_request_id_documents_document_id_fields_field_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner>, Integer, Hash)> update_signature_requests_signature_request_id_documents_document_id_fields_field_id_with_http_info(signature_request_id, document_id, field_id, opts)

```ruby
begin
  # Update a Field
  data, status_code, headers = api_instance.update_signature_requests_signature_request_id_documents_document_id_fields_field_id_with_http_info(signature_request_id, document_id, field_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner>
rescue YousignClientV3::ApiError => e
  puts "Error when calling FieldApi->update_signature_requests_signature_request_id_documents_document_id_fields_field_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_id** | **String** | Document Id |  |
| **field_id** | **String** | Field Id |  |
| **update_field** | [**UpdateField**](UpdateField.md) |  | [optional] |

### Return type

[**GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner**](GetSignatureRequestsSignatureRequestIdDocumentsDocumentIdFields200ResponseDataInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

