# YousignClientV3::DeprecatedApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**post_documents**](DeprecatedApi.md#post_documents) | **POST** /documents | [DEPRECATED] Upload a Document |


## post_documents

> <Document> post_documents(file, nature, opts)

[DEPRECATED] Upload a Document

Deprecated endpoint, do not use.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::DeprecatedApi.new
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
  # [DEPRECATED] Upload a Document
  result = api_instance.post_documents(file, nature, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling DeprecatedApi->post_documents: #{e}"
end
```

#### Using the post_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> post_documents_with_http_info(file, nature, opts)

```ruby
begin
  # [DEPRECATED] Upload a Document
  data, status_code, headers = api_instance.post_documents_with_http_info(file, nature, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue YousignClientV3::ApiError => e
  puts "Error when calling DeprecatedApi->post_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

- **Content-Type**: multipart/form-data
- **Accept**: application/json

