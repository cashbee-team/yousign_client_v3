# YousignClientV3::ElectronicSealImageApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_electronic_seal_image**](ElectronicSealImageApi.md#delete_electronic_seal_image) | **DELETE** /electronic_seal_images/{electronicSealImageId} | Delete an Electronic Seal Image |
| [**download_electronic_seal_image**](ElectronicSealImageApi.md#download_electronic_seal_image) | **GET** /electronic_seal_images/{electronicSealImageId}/download | Download an Electronic Seal Image |
| [**upload_electronic_seal_image**](ElectronicSealImageApi.md#upload_electronic_seal_image) | **POST** /electronic_seal_images | Upload an Electronic Seal Image |


## delete_electronic_seal_image

> delete_electronic_seal_image(electronic_seal_image_id)

Delete an Electronic Seal Image

Deletes a given Electronic Seal Image.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ElectronicSealImageApi.new
electronic_seal_image_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Electronic Seal Image Id

begin
  # Delete an Electronic Seal Image
  api_instance.delete_electronic_seal_image(electronic_seal_image_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealImageApi->delete_electronic_seal_image: #{e}"
end
```

#### Using the delete_electronic_seal_image_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_electronic_seal_image_with_http_info(electronic_seal_image_id)

```ruby
begin
  # Delete an Electronic Seal Image
  data, status_code, headers = api_instance.delete_electronic_seal_image_with_http_info(electronic_seal_image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealImageApi->delete_electronic_seal_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **electronic_seal_image_id** | **String** | Electronic Seal Image Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## download_electronic_seal_image

> File download_electronic_seal_image(electronic_seal_image_id)

Download an Electronic Seal Image

Download a given Electronic Seal Image.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ElectronicSealImageApi.new
electronic_seal_image_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Electronic Seal Image Id

begin
  # Download an Electronic Seal Image
  result = api_instance.download_electronic_seal_image(electronic_seal_image_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealImageApi->download_electronic_seal_image: #{e}"
end
```

#### Using the download_electronic_seal_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_electronic_seal_image_with_http_info(electronic_seal_image_id)

```ruby
begin
  # Download an Electronic Seal Image
  data, status_code, headers = api_instance.download_electronic_seal_image_with_http_info(electronic_seal_image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealImageApi->download_electronic_seal_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **electronic_seal_image_id** | **String** | Electronic Seal Image Id |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/png, image/jpg, image/gif, application/json


## upload_electronic_seal_image

> <ElectronicSealImage> upload_electronic_seal_image(file, name)

Upload an Electronic Seal Image

Upload an Electronic Seal Image to use for creating an Electronic Seal (can be used for several Electronic Seals).

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ElectronicSealImageApi.new
file = File.new('/path/to/some/file') # File | Seal image
name = 'name_example' # String | 

begin
  # Upload an Electronic Seal Image
  result = api_instance.upload_electronic_seal_image(file, name)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealImageApi->upload_electronic_seal_image: #{e}"
end
```

#### Using the upload_electronic_seal_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectronicSealImage>, Integer, Hash)> upload_electronic_seal_image_with_http_info(file, name)

```ruby
begin
  # Upload an Electronic Seal Image
  data, status_code, headers = api_instance.upload_electronic_seal_image_with_http_info(file, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectronicSealImage>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealImageApi->upload_electronic_seal_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | Seal image |  |
| **name** | **String** |  |  |

### Return type

[**ElectronicSealImage**](ElectronicSealImage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

