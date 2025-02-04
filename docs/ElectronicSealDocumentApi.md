# YousignClientV3::ElectronicSealDocumentApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_electronic_seal_document**](ElectronicSealDocumentApi.md#download_electronic_seal_document) | **GET** /electronic_seal_documents/{electronicSealDocumentId}/download | Download an Electronic Seal Document |
| [**upload_electronic_seal_document**](ElectronicSealDocumentApi.md#upload_electronic_seal_document) | **POST** /electronic_seal_documents | Create an Electronic Seal Document |


## download_electronic_seal_document

> File download_electronic_seal_document(electronic_seal_document_id)

Download an Electronic Seal Document

Download a given Electronic Seal Document.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ElectronicSealDocumentApi.new
electronic_seal_document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Electronic Seal Id

begin
  # Download an Electronic Seal Document
  result = api_instance.download_electronic_seal_document(electronic_seal_document_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealDocumentApi->download_electronic_seal_document: #{e}"
end
```

#### Using the download_electronic_seal_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_electronic_seal_document_with_http_info(electronic_seal_document_id)

```ruby
begin
  # Download an Electronic Seal Document
  data, status_code, headers = api_instance.download_electronic_seal_document_with_http_info(electronic_seal_document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealDocumentApi->download_electronic_seal_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **electronic_seal_document_id** | **String** | Electronic Seal Id |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## upload_electronic_seal_document

> <ElectronicSealDocument> upload_electronic_seal_document(file, opts)

Create an Electronic Seal Document

Create an Electronic Seal Document from an other one.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ElectronicSealDocumentApi.new
file = File.new('/path/to/some/file') # File | PDF file
opts = {
  password: 'password_example' # String | 
}

begin
  # Create an Electronic Seal Document
  result = api_instance.upload_electronic_seal_document(file, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealDocumentApi->upload_electronic_seal_document: #{e}"
end
```

#### Using the upload_electronic_seal_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectronicSealDocument>, Integer, Hash)> upload_electronic_seal_document_with_http_info(file, opts)

```ruby
begin
  # Create an Electronic Seal Document
  data, status_code, headers = api_instance.upload_electronic_seal_document_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectronicSealDocument>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealDocumentApi->upload_electronic_seal_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | PDF file |  |
| **password** | **String** |  | [optional] |

### Return type

[**ElectronicSealDocument**](ElectronicSealDocument.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

