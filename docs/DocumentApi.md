# YousignClientV3::DocumentApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_signature_requests_signature_request_id_documents_document_id**](DocumentApi.md#delete_signature_requests_signature_request_id_documents_document_id) | **DELETE** /signature_requests/{signatureRequestId}/documents/{documentId} | Delete a Document |
| [**get_signature_requests_signature_request_id_documents**](DocumentApi.md#get_signature_requests_signature_request_id_documents) | **GET** /signature_requests/{signatureRequestId}/documents | List Signature Request&#39;s Documents |
| [**get_signature_requests_signature_request_id_documents_document_id**](DocumentApi.md#get_signature_requests_signature_request_id_documents_document_id) | **GET** /signature_requests/{signatureRequestId}/documents/{documentId} | Get a Document |
| [**get_signature_requests_signature_request_id_documents_documents_id_download**](DocumentApi.md#get_signature_requests_signature_request_id_documents_documents_id_download) | **GET** /signature_requests/{signatureRequestId}/documents/{documentId}/download | Download a single Signature Request&#39;s Document |
| [**get_signature_requests_signature_request_id_documents_download**](DocumentApi.md#get_signature_requests_signature_request_id_documents_download) | **GET** /signature_requests/{signatureRequestId}/documents/download | Download Signature Request&#39;s Documents |
| [**patch_signature_requests_signature_request_id_documents_document_id**](DocumentApi.md#patch_signature_requests_signature_request_id_documents_document_id) | **PATCH** /signature_requests/{signatureRequestId}/documents/{documentId} | Update a Document |
| [**post_signature_requests_signature_request_id_documents**](DocumentApi.md#post_signature_requests_signature_request_id_documents) | **POST** /signature_requests/{signatureRequestId}/documents | Add Document to a Signature Request |
| [**post_signature_requests_signature_request_id_documents_document_id_replace**](DocumentApi.md#post_signature_requests_signature_request_id_documents_document_id_replace) | **POST** /signature_requests/{signatureRequestId}/documents/{documentId}/replace | Replace a Document in a Signature Request |


## delete_signature_requests_signature_request_id_documents_document_id

> delete_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id)

Delete a Document

Deletes a given Document from a Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id

begin
  # Delete a Document
  api_instance.delete_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->delete_signature_requests_signature_request_id_documents_document_id: #{e}"
end
```

#### Using the delete_signature_requests_signature_request_id_documents_document_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id)

```ruby
begin
  # Delete a Document
  data, status_code, headers = api_instance.delete_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->delete_signature_requests_signature_request_id_documents_document_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_id** | **String** | Document Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests_signature_request_id_documents

> <Array<Document>> get_signature_requests_signature_request_id_documents(signature_request_id, opts)

List Signature Request's Documents

Returns a list of Documents for a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  nature: 'attachment' # String | Filter by nature
}

begin
  # List Signature Request's Documents
  result = api_instance.get_signature_requests_signature_request_id_documents(signature_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->get_signature_requests_signature_request_id_documents: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Document>>, Integer, Hash)> get_signature_requests_signature_request_id_documents_with_http_info(signature_request_id, opts)

```ruby
begin
  # List Signature Request's Documents
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_documents_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Document>>
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->get_signature_requests_signature_request_id_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **nature** | **String** | Filter by nature | [optional] |

### Return type

[**Array&lt;Document&gt;**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests_signature_request_id_documents_document_id

> <Document> get_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id)

Get a Document

Retrieves a given Document.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id

begin
  # Get a Document
  result = api_instance.get_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->get_signature_requests_signature_request_id_documents_document_id: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_documents_document_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> get_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id)

```ruby
begin
  # Get a Document
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->get_signature_requests_signature_request_id_documents_document_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_id** | **String** | Document Id |  |

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests_signature_request_id_documents_documents_id_download

> File get_signature_requests_signature_request_id_documents_documents_id_download(signature_request_id, document_id)

Download a single Signature Request's Document

Downloads the PDF version of a given Document.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id

begin
  # Download a single Signature Request's Document
  result = api_instance.get_signature_requests_signature_request_id_documents_documents_id_download(signature_request_id, document_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->get_signature_requests_signature_request_id_documents_documents_id_download: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_documents_documents_id_download_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_signature_requests_signature_request_id_documents_documents_id_download_with_http_info(signature_request_id, document_id)

```ruby
begin
  # Download a single Signature Request's Document
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_documents_documents_id_download_with_http_info(signature_request_id, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->get_signature_requests_signature_request_id_documents_documents_id_download_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_id** | **String** | Document Id |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## get_signature_requests_signature_request_id_documents_download

> File get_signature_requests_signature_request_id_documents_download(signature_request_id, opts)

Download Signature Request's Documents

Downloads the PDF version of all Documents attached to a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  version: 'current', # String | Specify Documents version to download, `completed` is only available when the Signature Request status is `done`.
  archive: true # Boolean | Force zip archive download
}

begin
  # Download Signature Request's Documents
  result = api_instance.get_signature_requests_signature_request_id_documents_download(signature_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->get_signature_requests_signature_request_id_documents_download: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_documents_download_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_signature_requests_signature_request_id_documents_download_with_http_info(signature_request_id, opts)

```ruby
begin
  # Download Signature Request's Documents
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_documents_download_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->get_signature_requests_signature_request_id_documents_download_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **version** | **String** | Specify Documents version to download, &#x60;completed&#x60; is only available when the Signature Request status is &#x60;done&#x60;. | [optional] |
| **archive** | **Boolean** | Force zip archive download | [optional] |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/zip, application/pdf, application/json


## patch_signature_requests_signature_request_id_documents_document_id

> <Document> patch_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id, opts)

Update a Document

Updates a given Document. Any parameters not provided are left unchanged.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id
opts = {
  update_document: YousignClientV3::UpdateDocument.new # UpdateDocument | 
}

begin
  # Update a Document
  result = api_instance.patch_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->patch_signature_requests_signature_request_id_documents_document_id: #{e}"
end
```

#### Using the patch_signature_requests_signature_request_id_documents_document_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> patch_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id, opts)

```ruby
begin
  # Update a Document
  data, status_code, headers = api_instance.patch_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->patch_signature_requests_signature_request_id_documents_document_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_id** | **String** | Document Id |  |
| **update_document** | [**UpdateDocument**](UpdateDocument.md) |  | [optional] |

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_signature_requests_signature_request_id_documents

> <Document> post_signature_requests_signature_request_id_documents(signature_request_id, file, nature, opts)

Add Document to a Signature Request

Adds a Document to a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
file = File.new('/path/to/some/file') # File | Binary file
nature = 'attachment' # String | 
opts = {
  insert_after_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Insert just after the position of the specified document id
  password: 'password_example', # String | 
  name: 'name_example', # String | The document name. If not set, will use the uploaded document name. This value should contain any characters except \\\"\\\\\\\", \\\"/\\\" and can\\\\'t start and finish with a space.
  initials: YousignClientV3::InitialsArea.new({alignment: 'left', y: 10}), # InitialsArea | 
  parse_anchors: true # Boolean | 
}

begin
  # Add Document to a Signature Request
  result = api_instance.post_signature_requests_signature_request_id_documents(signature_request_id, file, nature, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->post_signature_requests_signature_request_id_documents: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> post_signature_requests_signature_request_id_documents_with_http_info(signature_request_id, file, nature, opts)

```ruby
begin
  # Add Document to a Signature Request
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_documents_with_http_info(signature_request_id, file, nature, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->post_signature_requests_signature_request_id_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **file** | **File** | Binary file |  |
| **nature** | **String** |  |  |
| **insert_after_id** | **String** | Insert just after the position of the specified document id | [optional] |
| **password** | **String** |  | [optional] |
| **name** | **String** | The document name. If not set, will use the uploaded document name. This value should contain any characters except \\\&quot;\\\\\\\&quot;, \\\&quot;/\\\&quot; and can\\\\&#39;t start and finish with a space. | [optional] |
| **initials** | [**InitialsArea**](InitialsArea.md) |  | [optional] |
| **parse_anchors** | **Boolean** |  | [optional] |

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## post_signature_requests_signature_request_id_documents_document_id_replace

> <Document> post_signature_requests_signature_request_id_documents_document_id_replace(signature_request_id, document_id, file, opts)

Replace a Document in a Signature Request

Replace the file of a given Document.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id
file = File.new('/path/to/some/file') # File | Accepted formats: PDF, DOCX, JPEG, JPG and PNG. All files are converted to PDF upon upload. If the Document nature is signable_document, only PDF or DOCX file formats are allowed. 
opts = {
  name: 'name_example' # String | The document name. If not set, will use the uploaded document name. This value should contain any characters except \\\"\\\\\\\", \\\"/\\\" and can\\\\'t start and finish with a space.
}

begin
  # Replace a Document in a Signature Request
  result = api_instance.post_signature_requests_signature_request_id_documents_document_id_replace(signature_request_id, document_id, file, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->post_signature_requests_signature_request_id_documents_document_id_replace: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_documents_document_id_replace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> post_signature_requests_signature_request_id_documents_document_id_replace_with_http_info(signature_request_id, document_id, file, opts)

```ruby
begin
  # Replace a Document in a Signature Request
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_documents_document_id_replace_with_http_info(signature_request_id, document_id, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue YousignClientV3::ApiError => e
  puts "Error when calling DocumentApi->post_signature_requests_signature_request_id_documents_document_id_replace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **document_id** | **String** | Document Id |  |
| **file** | **File** | Accepted formats: PDF, DOCX, JPEG, JPG and PNG. All files are converted to PDF upon upload. If the Document nature is signable_document, only PDF or DOCX file formats are allowed.  |  |
| **name** | **String** | The document name. If not set, will use the uploaded document name. This value should contain any characters except \\\&quot;\\\\\\\&quot;, \\\&quot;/\\\&quot; and can\\\\&#39;t start and finish with a space. | [optional] |

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

