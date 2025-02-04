# YousignClientV3::CustomExperienceApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_custom_experience**](CustomExperienceApi.md#delete_custom_experience) | **DELETE** /custom_experiences/{customExperienceId} | Delete a Custom Experience |
| [**delete_custom_experience_logo**](CustomExperienceApi.md#delete_custom_experience_logo) | **DELETE** /custom_experiences/{customExperienceId}/logo | Delete a Custom Experience logo |
| [**get_custom_experiences**](CustomExperienceApi.md#get_custom_experiences) | **GET** /custom_experiences | List Custom Experiences |
| [**get_custom_experiences_custom_experience_id**](CustomExperienceApi.md#get_custom_experiences_custom_experience_id) | **GET** /custom_experiences/{customExperienceId} | Get a Custom Experience |
| [**patch_custom_experience_logo**](CustomExperienceApi.md#patch_custom_experience_logo) | **POST** /custom_experiences/{customExperienceId}/logo | Update a Custom Experience logo |
| [**patch_custom_experiences_custom_experience_id**](CustomExperienceApi.md#patch_custom_experiences_custom_experience_id) | **PATCH** /custom_experiences/{customExperienceId} | Update a Custom Experience |
| [**post_custom_experience**](CustomExperienceApi.md#post_custom_experience) | **POST** /custom_experiences | Create a Custom Experience |


## delete_custom_experience

> delete_custom_experience(custom_experience_id)

Delete a Custom Experience

Deletes a given Custom Experience.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::CustomExperienceApi.new
custom_experience_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Custom Experience Id

begin
  # Delete a Custom Experience
  api_instance.delete_custom_experience(custom_experience_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->delete_custom_experience: #{e}"
end
```

#### Using the delete_custom_experience_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_custom_experience_with_http_info(custom_experience_id)

```ruby
begin
  # Delete a Custom Experience
  data, status_code, headers = api_instance.delete_custom_experience_with_http_info(custom_experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->delete_custom_experience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_experience_id** | **String** | Custom Experience Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_custom_experience_logo

> delete_custom_experience_logo(custom_experience_id)

Delete a Custom Experience logo

Deletes the logo of a Custom Experience.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::CustomExperienceApi.new
custom_experience_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Custom Experience Id

begin
  # Delete a Custom Experience logo
  api_instance.delete_custom_experience_logo(custom_experience_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->delete_custom_experience_logo: #{e}"
end
```

#### Using the delete_custom_experience_logo_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_custom_experience_logo_with_http_info(custom_experience_id)

```ruby
begin
  # Delete a Custom Experience logo
  data, status_code, headers = api_instance.delete_custom_experience_logo_with_http_info(custom_experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->delete_custom_experience_logo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_experience_id** | **String** | Custom Experience Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_experiences

> <GetCustomExperiences200Response> get_custom_experiences(opts)

List Custom Experiences

Returns the list of all Custom Experiences in your Organization. You can limit the number of items returned by using pagination. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::CustomExperienceApi.new
opts = {
  after: 'after_example', # String | After cursor (pagination)
  limit: 56 # Integer | The limit of items count to retrieve.
}

begin
  # List Custom Experiences
  result = api_instance.get_custom_experiences(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->get_custom_experiences: #{e}"
end
```

#### Using the get_custom_experiences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomExperiences200Response>, Integer, Hash)> get_custom_experiences_with_http_info(opts)

```ruby
begin
  # List Custom Experiences
  data, status_code, headers = api_instance.get_custom_experiences_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomExperiences200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->get_custom_experiences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 100] |

### Return type

[**GetCustomExperiences200Response**](GetCustomExperiences200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_experiences_custom_experience_id

> <CustomExperience> get_custom_experiences_custom_experience_id(custom_experience_id)

Get a Custom Experience

Retrieves a given Custom Experience.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::CustomExperienceApi.new
custom_experience_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Custom Experience Id

begin
  # Get a Custom Experience
  result = api_instance.get_custom_experiences_custom_experience_id(custom_experience_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->get_custom_experiences_custom_experience_id: #{e}"
end
```

#### Using the get_custom_experiences_custom_experience_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomExperience>, Integer, Hash)> get_custom_experiences_custom_experience_id_with_http_info(custom_experience_id)

```ruby
begin
  # Get a Custom Experience
  data, status_code, headers = api_instance.get_custom_experiences_custom_experience_id_with_http_info(custom_experience_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomExperience>
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->get_custom_experiences_custom_experience_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_experience_id** | **String** | Custom Experience Id |  |

### Return type

[**CustomExperience**](CustomExperience.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_custom_experience_logo

> <CustomExperience> patch_custom_experience_logo(custom_experience_id, file)

Update a Custom Experience logo

Updates the logo of a given Custom Experience by uploading the image of your choice.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::CustomExperienceApi.new
custom_experience_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Custom Experience Id
file = File.new('/path/to/some/file') # File | 

begin
  # Update a Custom Experience logo
  result = api_instance.patch_custom_experience_logo(custom_experience_id, file)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->patch_custom_experience_logo: #{e}"
end
```

#### Using the patch_custom_experience_logo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomExperience>, Integer, Hash)> patch_custom_experience_logo_with_http_info(custom_experience_id, file)

```ruby
begin
  # Update a Custom Experience logo
  data, status_code, headers = api_instance.patch_custom_experience_logo_with_http_info(custom_experience_id, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomExperience>
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->patch_custom_experience_logo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_experience_id** | **String** | Custom Experience Id |  |
| **file** | **File** |  |  |

### Return type

[**CustomExperience**](CustomExperience.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## patch_custom_experiences_custom_experience_id

> <CustomExperience> patch_custom_experiences_custom_experience_id(custom_experience_id, opts)

Update a Custom Experience

Updates a given Custom Experience. Any parameters not provided are left unchanged. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::CustomExperienceApi.new
custom_experience_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Custom Experience Id
opts = {
  update_custom_experience: YousignClientV3::UpdateCustomExperience.new # UpdateCustomExperience | 
}

begin
  # Update a Custom Experience
  result = api_instance.patch_custom_experiences_custom_experience_id(custom_experience_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->patch_custom_experiences_custom_experience_id: #{e}"
end
```

#### Using the patch_custom_experiences_custom_experience_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomExperience>, Integer, Hash)> patch_custom_experiences_custom_experience_id_with_http_info(custom_experience_id, opts)

```ruby
begin
  # Update a Custom Experience
  data, status_code, headers = api_instance.patch_custom_experiences_custom_experience_id_with_http_info(custom_experience_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomExperience>
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->patch_custom_experiences_custom_experience_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_experience_id** | **String** | Custom Experience Id |  |
| **update_custom_experience** | [**UpdateCustomExperience**](UpdateCustomExperience.md) |  | [optional] |

### Return type

[**CustomExperience**](CustomExperience.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_custom_experience

> <CustomExperience> post_custom_experience(opts)

Create a Custom Experience

Creates a new Custom Experience.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::CustomExperienceApi.new
opts = {
  create_custom_experience: YousignClientV3::CreateCustomExperience.new({name: 'name_example'}) # CreateCustomExperience | 
}

begin
  # Create a Custom Experience
  result = api_instance.post_custom_experience(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->post_custom_experience: #{e}"
end
```

#### Using the post_custom_experience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomExperience>, Integer, Hash)> post_custom_experience_with_http_info(opts)

```ruby
begin
  # Create a Custom Experience
  data, status_code, headers = api_instance.post_custom_experience_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomExperience>
rescue YousignClientV3::ApiError => e
  puts "Error when calling CustomExperienceApi->post_custom_experience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_custom_experience** | [**CreateCustomExperience**](CreateCustomExperience.md) |  | [optional] |

### Return type

[**CustomExperience**](CustomExperience.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

