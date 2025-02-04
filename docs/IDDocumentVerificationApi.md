# YousignClientV3::IDDocumentVerificationApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_id_document_verification**](IDDocumentVerificationApi.md#create_id_document_verification) | **POST** /id_document_verifications | Initiate a new ID document verification |
| [**get_id_document_verification**](IDDocumentVerificationApi.md#get_id_document_verification) | **GET** /id_document_verifications/{idDocumentVerificationId} | Retrieve an ID document verification |
| [**get_id_document_verifications**](IDDocumentVerificationApi.md#get_id_document_verifications) | **GET** /id_document_verifications | List ID Document Verifications |


## create_id_document_verification

> <IdDocumentVerificationCreated> create_id_document_verification(first_name, last_name, file, opts)

Initiate a new ID document verification

Verify a person’s ID document by sending the file containing their ID document (ID card, passport, residence permit or driving license).

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::IDDocumentVerificationApi.new
first_name = 'first_name_example' # String | Please provide the holder first name, exactly as it appears on the ID document. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don't provide it as part of the name 
last_name = 'last_name_example' # String | Please provide the holder last name, exactly as it appears on the ID document birth name. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don't provide it as part of the name 
file = File.new('/path/to/some/file') # File | Binary file
opts = {
  document_type: 'id_card', # String | The document type to verify
  additional_file: File.new('/path/to/some/file') # File | Binary file
}

begin
  # Initiate a new ID document verification
  result = api_instance.create_id_document_verification(first_name, last_name, file, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling IDDocumentVerificationApi->create_id_document_verification: #{e}"
end
```

#### Using the create_id_document_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdDocumentVerificationCreated>, Integer, Hash)> create_id_document_verification_with_http_info(first_name, last_name, file, opts)

```ruby
begin
  # Initiate a new ID document verification
  data, status_code, headers = api_instance.create_id_document_verification_with_http_info(first_name, last_name, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdDocumentVerificationCreated>
rescue YousignClientV3::ApiError => e
  puts "Error when calling IDDocumentVerificationApi->create_id_document_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | Please provide the holder first name, exactly as it appears on the ID document. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don&#39;t provide it as part of the name  |  |
| **last_name** | **String** | Please provide the holder last name, exactly as it appears on the ID document birth name. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don&#39;t provide it as part of the name  |  |
| **file** | **File** | Binary file |  |
| **document_type** | **String** | The document type to verify | [optional] |
| **additional_file** | **File** | Binary file | [optional] |

### Return type

[**IdDocumentVerificationCreated**](IdDocumentVerificationCreated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## get_id_document_verification

> <GetIdDocumentVerification200Response> get_id_document_verification(id_document_verification_id)

Retrieve an ID document verification

Get the detailed results of an ID document verification, including the status of the verification, the reasons in case of rejection and the data extracted from the ID document.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::IDDocumentVerificationApi.new
id_document_verification_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID document verification ID

begin
  # Retrieve an ID document verification
  result = api_instance.get_id_document_verification(id_document_verification_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling IDDocumentVerificationApi->get_id_document_verification: #{e}"
end
```

#### Using the get_id_document_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIdDocumentVerification200Response>, Integer, Hash)> get_id_document_verification_with_http_info(id_document_verification_id)

```ruby
begin
  # Retrieve an ID document verification
  data, status_code, headers = api_instance.get_id_document_verification_with_http_info(id_document_verification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIdDocumentVerification200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling IDDocumentVerificationApi->get_id_document_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id_document_verification_id** | **String** | The ID document verification ID |  |

### Return type

[**GetIdDocumentVerification200Response**](GetIdDocumentVerification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_id_document_verifications

> <GetIdDocumentVerifications200Response> get_id_document_verifications(opts)

List ID Document Verifications

Returns the list of all ID Document Verifications within your organization.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::IDDocumentVerificationApi.new
opts = {
  after: 'after_example', # String | After cursor (pagination)
  limit: 56, # Integer | The limit of items count to retrieve.
  status: 'pending' # String | Filter by status
}

begin
  # List ID Document Verifications
  result = api_instance.get_id_document_verifications(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling IDDocumentVerificationApi->get_id_document_verifications: #{e}"
end
```

#### Using the get_id_document_verifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIdDocumentVerifications200Response>, Integer, Hash)> get_id_document_verifications_with_http_info(opts)

```ruby
begin
  # List ID Document Verifications
  data, status_code, headers = api_instance.get_id_document_verifications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIdDocumentVerifications200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling IDDocumentVerificationApi->get_id_document_verifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 100] |
| **status** | **String** | Filter by status | [optional] |

### Return type

[**GetIdDocumentVerifications200Response**](GetIdDocumentVerifications200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

