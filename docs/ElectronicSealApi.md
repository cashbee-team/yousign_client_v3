# YousignClientV3::ElectronicSealApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_electronic_seal**](ElectronicSealApi.md#get_electronic_seal) | **GET** /electronic_seals/{electronicSealId} | Get an Electronic Seal |
| [**list_electronic_seal_images**](ElectronicSealApi.md#list_electronic_seal_images) | **GET** /electronic_seal_images | List Electronic Seal Images |
| [**post_electronic_seals**](ElectronicSealApi.md#post_electronic_seals) | **POST** /electronic_seals | Create an Electronic Seal |


## get_electronic_seal

> <ElectronicSeal> get_electronic_seal(electronic_seal_id)

Get an Electronic Seal

Retrieves a given Electronic Seal.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ElectronicSealApi.new
electronic_seal_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Electronic Seal Id

begin
  # Get an Electronic Seal
  result = api_instance.get_electronic_seal(electronic_seal_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealApi->get_electronic_seal: #{e}"
end
```

#### Using the get_electronic_seal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectronicSeal>, Integer, Hash)> get_electronic_seal_with_http_info(electronic_seal_id)

```ruby
begin
  # Get an Electronic Seal
  data, status_code, headers = api_instance.get_electronic_seal_with_http_info(electronic_seal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectronicSeal>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealApi->get_electronic_seal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **electronic_seal_id** | **String** | Electronic Seal Id |  |

### Return type

[**ElectronicSeal**](ElectronicSeal.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_electronic_seal_images

> <ListElectronicSealImages200Response> list_electronic_seal_images(opts)

List Electronic Seal Images

Lists Electronic Seal Images. The list is paginated and can be filtered by the `after` cursor. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ElectronicSealApi.new
opts = {
  after: 'after_example', # String | After cursor (pagination)
  limit: 56 # Integer | The limit of items count to retrieve.
}

begin
  # List Electronic Seal Images
  result = api_instance.list_electronic_seal_images(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealApi->list_electronic_seal_images: #{e}"
end
```

#### Using the list_electronic_seal_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListElectronicSealImages200Response>, Integer, Hash)> list_electronic_seal_images_with_http_info(opts)

```ruby
begin
  # List Electronic Seal Images
  data, status_code, headers = api_instance.list_electronic_seal_images_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListElectronicSealImages200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealApi->list_electronic_seal_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 100] |

### Return type

[**ListElectronicSealImages200Response**](ListElectronicSealImages200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_electronic_seals

> <ElectronicSeal> post_electronic_seals(opts)

Create an Electronic Seal

Create a new Electronic Seal

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ElectronicSealApi.new
opts = {
  create_electronic_seal_payload: YousignClientV3::CreateElectronicSealPayload.new({document_id: '160473f9-156f-4583-848c-cbc3dec49b4a', fields: [YousignClientV3::CreateElectronicSealPayloadFieldsInner.new({type: 'seal', height: 200, width: 250, page: 1, x: 0, y: 0})]}) # CreateElectronicSealPayload | 
}

begin
  # Create an Electronic Seal
  result = api_instance.post_electronic_seals(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealApi->post_electronic_seals: #{e}"
end
```

#### Using the post_electronic_seals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectronicSeal>, Integer, Hash)> post_electronic_seals_with_http_info(opts)

```ruby
begin
  # Create an Electronic Seal
  data, status_code, headers = api_instance.post_electronic_seals_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectronicSeal>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealApi->post_electronic_seals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_electronic_seal_payload** | [**CreateElectronicSealPayload**](CreateElectronicSealPayload.md) |  | [optional] |

### Return type

[**ElectronicSeal**](ElectronicSeal.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

