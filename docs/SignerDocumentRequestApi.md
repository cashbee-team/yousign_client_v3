# YousignClientV3::SignerDocumentRequestApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_signature_requests_signature_request_id_document_requests_document_request_id**](SignerDocumentRequestApi.md#delete_signature_requests_signature_request_id_document_requests_document_request_id) | **DELETE** /signature_requests/{signatureRequestId}/document_requests/{documentRequestId} | Delete a Signer Document Request |
| [**delete_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id**](SignerDocumentRequestApi.md#delete_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id) | **DELETE** /signature_requests/{signatureRequestId}/document_requests/{documentRequestId}/signers/{signerId} | Remove a Signer to a given Signer Document Request |
| [**delete_signature_requests_signature_request_id_signers_signer_id_documents**](SignerDocumentRequestApi.md#delete_signature_requests_signature_request_id_signers_signer_id_documents) | **DELETE** /signature_requests/{signatureRequestId}/signers/{signerId}/documents | Delete the Documents uploaded by a Signer |
| [**get_signature_requests_signature_request_id_signer_document_requests**](SignerDocumentRequestApi.md#get_signature_requests_signature_request_id_signer_document_requests) | **GET** /signature_requests/{signatureRequestId}/document_requests | List Signer Document Requests of the Signature Request |
| [**get_signature_requests_signature_request_id_signers_signer_id_documents**](SignerDocumentRequestApi.md#get_signature_requests_signature_request_id_signers_signer_id_documents) | **GET** /signature_requests/{signatureRequestId}/signers/{signerId}/documents | List the Signer Documents of a Signer |
| [**get_signature_requests_signature_request_id_signers_signer_id_documents_signer_document_id**](SignerDocumentRequestApi.md#get_signature_requests_signature_request_id_signers_signer_id_documents_signer_document_id) | **GET** /signature_requests/{signatureRequestId}/signers/{signerId}/documents/{signerDocumentId}/download | Download a Signer Document |
| [**post_signature_requests_signature_request_id_document_requests**](SignerDocumentRequestApi.md#post_signature_requests_signature_request_id_document_requests) | **POST** /signature_requests/{signatureRequestId}/document_requests | Add Signer Document Request to a Signature Request |
| [**put_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id**](SignerDocumentRequestApi.md#put_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id) | **PUT** /signature_requests/{signatureRequestId}/document_requests/{documentRequestId}/signers/{signerId} | Adds a Signer to a given Signer Document Request |


## delete_signature_requests_signature_request_id_document_requests_document_request_id

> delete_signature_requests_signature_request_id_document_requests_document_request_id(signature_request_id, document_request_id)

Delete a Signer Document Request

Delete a Signer Document Request from signature request. This action is only permitted when the Signature Request is a draft.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerDocumentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Document Request Id

begin
  # Delete a Signer Document Request
  api_instance.delete_signature_requests_signature_request_id_document_requests_document_request_id(signature_request_id, document_request_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->delete_signature_requests_signature_request_id_document_requests_document_request_id: #{e}"
end
```

#### Using the delete_signature_requests_signature_request_id_document_requests_document_request_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_requests_signature_request_id_document_requests_document_request_id_with_http_info(signature_request_id, document_request_id)

```ruby
begin
  # Delete a Signer Document Request
  data, status_code, headers = api_instance.delete_signature_requests_signature_request_id_document_requests_document_request_id_with_http_info(signature_request_id, document_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->delete_signature_requests_signature_request_id_document_requests_document_request_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_request_id** | **String** | Signer Document Request Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id

> delete_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id(signature_request_id, document_request_id, signer_id)

Remove a Signer to a given Signer Document Request

Remove a Signer to a given Signer Document Request. This action is only permitted when the Signature Request is a draft.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerDocumentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Document Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # Remove a Signer to a given Signer Document Request
  api_instance.delete_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id(signature_request_id, document_request_id, signer_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->delete_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id: #{e}"
end
```

#### Using the delete_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id_with_http_info(signature_request_id, document_request_id, signer_id)

```ruby
begin
  # Remove a Signer to a given Signer Document Request
  data, status_code, headers = api_instance.delete_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id_with_http_info(signature_request_id, document_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->delete_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_request_id** | **String** | Signer Document Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_signature_requests_signature_request_id_signers_signer_id_documents

> delete_signature_requests_signature_request_id_signers_signer_id_documents(signature_request_id, signer_id)

Delete the Documents uploaded by a Signer

Deletes all documents uploaded by a given Signer for a specific Signature Request. Deletion is only possible when Signer status is `signed`. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerDocumentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # Delete the Documents uploaded by a Signer
  api_instance.delete_signature_requests_signature_request_id_signers_signer_id_documents(signature_request_id, signer_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->delete_signature_requests_signature_request_id_signers_signer_id_documents: #{e}"
end
```

#### Using the delete_signature_requests_signature_request_id_signers_signer_id_documents_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_requests_signature_request_id_signers_signer_id_documents_with_http_info(signature_request_id, signer_id)

```ruby
begin
  # Delete the Documents uploaded by a Signer
  data, status_code, headers = api_instance.delete_signature_requests_signature_request_id_signers_signer_id_documents_with_http_info(signature_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->delete_signature_requests_signature_request_id_signers_signer_id_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests_signature_request_id_signer_document_requests

> <GetSignatureRequestsSignatureRequestIdSignerDocumentRequests200Response> get_signature_requests_signature_request_id_signer_document_requests(signature_request_id)

List Signer Document Requests of the Signature Request

Returns a list of Signer Document Requests for a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerDocumentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id

begin
  # List Signer Document Requests of the Signature Request
  result = api_instance.get_signature_requests_signature_request_id_signer_document_requests(signature_request_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->get_signature_requests_signature_request_id_signer_document_requests: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_signer_document_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSignatureRequestsSignatureRequestIdSignerDocumentRequests200Response>, Integer, Hash)> get_signature_requests_signature_request_id_signer_document_requests_with_http_info(signature_request_id)

```ruby
begin
  # List Signer Document Requests of the Signature Request
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_signer_document_requests_with_http_info(signature_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSignatureRequestsSignatureRequestIdSignerDocumentRequests200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->get_signature_requests_signature_request_id_signer_document_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |

### Return type

[**GetSignatureRequestsSignatureRequestIdSignerDocumentRequests200Response**](GetSignatureRequestsSignatureRequestIdSignerDocumentRequests200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests_signature_request_id_signers_signer_id_documents

> <GetSignatureRequestsSignatureRequestIdSignersSignerIdDocuments200Response> get_signature_requests_signature_request_id_signers_signer_id_documents(signature_request_id, signer_id)

List the Signer Documents of a Signer

Returns a list of Documents uploaded by a given Signer. Only possible when Signer status is `signed`. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerDocumentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # List the Signer Documents of a Signer
  result = api_instance.get_signature_requests_signature_request_id_signers_signer_id_documents(signature_request_id, signer_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->get_signature_requests_signature_request_id_signers_signer_id_documents: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_signers_signer_id_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSignatureRequestsSignatureRequestIdSignersSignerIdDocuments200Response>, Integer, Hash)> get_signature_requests_signature_request_id_signers_signer_id_documents_with_http_info(signature_request_id, signer_id)

```ruby
begin
  # List the Signer Documents of a Signer
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_signers_signer_id_documents_with_http_info(signature_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSignatureRequestsSignatureRequestIdSignersSignerIdDocuments200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->get_signature_requests_signature_request_id_signers_signer_id_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

[**GetSignatureRequestsSignatureRequestIdSignersSignerIdDocuments200Response**](GetSignatureRequestsSignatureRequestIdSignersSignerIdDocuments200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests_signature_request_id_signers_signer_id_documents_signer_document_id

> File get_signature_requests_signature_request_id_signers_signer_id_documents_signer_document_id(signature_request_id, signer_id, signer_document_id)

Download a Signer Document

Downloads a Document uploaded by a given Signer. Only possible when Signer status is `signed`. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerDocumentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id
signer_document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Document Id

begin
  # Download a Signer Document
  result = api_instance.get_signature_requests_signature_request_id_signers_signer_id_documents_signer_document_id(signature_request_id, signer_id, signer_document_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->get_signature_requests_signature_request_id_signers_signer_id_documents_signer_document_id: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_signers_signer_id_documents_signer_document_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_signature_requests_signature_request_id_signers_signer_id_documents_signer_document_id_with_http_info(signature_request_id, signer_id, signer_document_id)

```ruby
begin
  # Download a Signer Document
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_signers_signer_id_documents_signer_document_id_with_http_info(signature_request_id, signer_id, signer_document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->get_signature_requests_signature_request_id_signers_signer_id_documents_signer_document_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **signer_id** | **String** | Signer Id |  |
| **signer_document_id** | **String** | Signer Document Id |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## post_signature_requests_signature_request_id_document_requests

> <SignerDocumentRequest> post_signature_requests_signature_request_id_document_requests(signature_request_id, opts)

Add Signer Document Request to a Signature Request

Adds a Signer Document Request to a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerDocumentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  create_signer_document_request: YousignClientV3::CreateSignerDocumentRequest.new({title: 'title_example', optional: false, signer_ids: ['signer_ids_example']}) # CreateSignerDocumentRequest | 
}

begin
  # Add Signer Document Request to a Signature Request
  result = api_instance.post_signature_requests_signature_request_id_document_requests(signature_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->post_signature_requests_signature_request_id_document_requests: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_document_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignerDocumentRequest>, Integer, Hash)> post_signature_requests_signature_request_id_document_requests_with_http_info(signature_request_id, opts)

```ruby
begin
  # Add Signer Document Request to a Signature Request
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_document_requests_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignerDocumentRequest>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->post_signature_requests_signature_request_id_document_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **create_signer_document_request** | [**CreateSignerDocumentRequest**](CreateSignerDocumentRequest.md) |  | [optional] |

### Return type

[**SignerDocumentRequest**](SignerDocumentRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id

> <SignerDocumentRequest> put_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id(signature_request_id, document_request_id, signer_id)

Adds a Signer to a given Signer Document Request

Adds a Signer to a given Signer Document Request. This action is only permitted when the Signature Request is a draft.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerDocumentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Document Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # Adds a Signer to a given Signer Document Request
  result = api_instance.put_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id(signature_request_id, document_request_id, signer_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->put_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id: #{e}"
end
```

#### Using the put_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignerDocumentRequest>, Integer, Hash)> put_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id_with_http_info(signature_request_id, document_request_id, signer_id)

```ruby
begin
  # Adds a Signer to a given Signer Document Request
  data, status_code, headers = api_instance.put_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id_with_http_info(signature_request_id, document_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignerDocumentRequest>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerDocumentRequestApi->put_signature_requests_signature_request_id_document_requests_document_request_id_signers_signer_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_request_id** | **String** | Signer Document Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

[**SignerDocumentRequest**](SignerDocumentRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

