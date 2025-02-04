# YousignClientV3::ContactApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_contacts_contact_id**](ContactApi.md#delete_contacts_contact_id) | **DELETE** /contacts/{contactId} | Delete a Contact |
| [**get_contacts**](ContactApi.md#get_contacts) | **GET** /contacts | List Contacts |
| [**get_contacts_contact_id**](ContactApi.md#get_contacts_contact_id) | **GET** /contacts/{contactId} | Get a Contact |
| [**patch_contacts_contact_id**](ContactApi.md#patch_contacts_contact_id) | **PATCH** /contacts/{contactId} | Update a Contact |
| [**post_contact**](ContactApi.md#post_contact) | **POST** /contacts | Create a Contact |


## delete_contacts_contact_id

> delete_contacts_contact_id(contact_id)

Delete a Contact

Deletes a given Contact.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ContactApi.new
contact_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Contact Id

begin
  # Delete a Contact
  api_instance.delete_contacts_contact_id(contact_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling ContactApi->delete_contacts_contact_id: #{e}"
end
```

#### Using the delete_contacts_contact_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contacts_contact_id_with_http_info(contact_id)

```ruby
begin
  # Delete a Contact
  data, status_code, headers = api_instance.delete_contacts_contact_id_with_http_info(contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling ContactApi->delete_contacts_contact_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | Contact Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contacts

> <GetContacts200Response> get_contacts(opts)

List Contacts

Returns the list of all the Contacts within your organization.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ContactApi.new
opts = {
  after: 'after_example', # String | After cursor (pagination)
  limit: 56 # Integer | The limit of items count to retrieve.
}

begin
  # List Contacts
  result = api_instance.get_contacts(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ContactApi->get_contacts: #{e}"
end
```

#### Using the get_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContacts200Response>, Integer, Hash)> get_contacts_with_http_info(opts)

```ruby
begin
  # List Contacts
  data, status_code, headers = api_instance.get_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContacts200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ContactApi->get_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 100] |

### Return type

[**GetContacts200Response**](GetContacts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contacts_contact_id

> <Contact> get_contacts_contact_id(contact_id)

Get a Contact

Retrieves a given Contact.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ContactApi.new
contact_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Contact Id

begin
  # Get a Contact
  result = api_instance.get_contacts_contact_id(contact_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ContactApi->get_contacts_contact_id: #{e}"
end
```

#### Using the get_contacts_contact_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contact>, Integer, Hash)> get_contacts_contact_id_with_http_info(contact_id)

```ruby
begin
  # Get a Contact
  data, status_code, headers = api_instance.get_contacts_contact_id_with_http_info(contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contact>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ContactApi->get_contacts_contact_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | Contact Id |  |

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_contacts_contact_id

> <Contact> patch_contacts_contact_id(contact_id, opts)

Update a Contact

Updates a given Contact. Any parameters not provided are left unchanged. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ContactApi.new
contact_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Contact Id
opts = {
  update_contact: YousignClientV3::UpdateContact.new # UpdateContact | 
}

begin
  # Update a Contact
  result = api_instance.patch_contacts_contact_id(contact_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ContactApi->patch_contacts_contact_id: #{e}"
end
```

#### Using the patch_contacts_contact_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contact>, Integer, Hash)> patch_contacts_contact_id_with_http_info(contact_id, opts)

```ruby
begin
  # Update a Contact
  data, status_code, headers = api_instance.patch_contacts_contact_id_with_http_info(contact_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contact>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ContactApi->patch_contacts_contact_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | Contact Id |  |
| **update_contact** | [**UpdateContact**](UpdateContact.md) |  | [optional] |

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_contact

> <Contact> post_contact(opts)

Create a Contact

Creates a new Contact.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ContactApi.new
opts = {
  create_contact: YousignClientV3::CreateContact.new({first_name: 'John', last_name: 'Doe', email: 'john.doe@example.com', locale: YousignClientV3::Locale::EN}) # CreateContact | 
}

begin
  # Create a Contact
  result = api_instance.post_contact(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ContactApi->post_contact: #{e}"
end
```

#### Using the post_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contact>, Integer, Hash)> post_contact_with_http_info(opts)

```ruby
begin
  # Create a Contact
  data, status_code, headers = api_instance.post_contact_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contact>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ContactApi->post_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_contact** | [**CreateContact**](CreateContact.md) |  | [optional] |

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

