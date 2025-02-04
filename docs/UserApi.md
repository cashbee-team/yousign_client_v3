# YousignClientV3::UserApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_users_user_id**](UserApi.md#delete_users_user_id) | **DELETE** /users/{userId} | Delete a User |
| [**delete_workspace_workspace_id_users_user_id**](UserApi.md#delete_workspace_workspace_id_users_user_id) | **DELETE** /workspaces/{workspaceId}/users/{userId} | Remove a user from a workspace |
| [**get_users**](UserApi.md#get_users) | **GET** /users | List Users |
| [**get_users_user_id**](UserApi.md#get_users_user_id) | **GET** /users/{userId} | Get a User |
| [**patch_users_user_id**](UserApi.md#patch_users_user_id) | **PATCH** /users/{userId} | Update a User |
| [**post_users**](UserApi.md#post_users) | **POST** /users | Create a new User |
| [**put_workspaces_workspace_id_users**](UserApi.md#put_workspaces_workspace_id_users) | **PUT** /workspaces/{workspaceId}/users/{userId} | Associate a user to a workspace |


## delete_users_user_id

> delete_users_user_id(user_id)

Delete a User

Deletes a given User and its Invitation, only possible when the User is in `invited` status.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::UserApi.new
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | User Id

begin
  # Delete a User
  api_instance.delete_users_user_id(user_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->delete_users_user_id: #{e}"
end
```

#### Using the delete_users_user_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_users_user_id_with_http_info(user_id)

```ruby
begin
  # Delete a User
  data, status_code, headers = api_instance.delete_users_user_id_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->delete_users_user_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_workspace_workspace_id_users_user_id

> delete_workspace_workspace_id_users_user_id(workspace_id, user_id)

Remove a user from a workspace

Removes a User from a given Workspace.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::UserApi.new
workspace_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workspace Id
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | User Id

begin
  # Remove a user from a workspace
  api_instance.delete_workspace_workspace_id_users_user_id(workspace_id, user_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->delete_workspace_workspace_id_users_user_id: #{e}"
end
```

#### Using the delete_workspace_workspace_id_users_user_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workspace_workspace_id_users_user_id_with_http_info(workspace_id, user_id)

```ruby
begin
  # Remove a user from a workspace
  data, status_code, headers = api_instance.delete_workspace_workspace_id_users_user_id_with_http_info(workspace_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->delete_workspace_workspace_id_users_user_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | Workspace Id |  |
| **user_id** | **String** | User Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> <GetUsers200Response> get_users(opts)

List Users

Returns the list of all the Users within your Organization.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::UserApi.new
opts = {
  after: 'after_example', # String | After cursor (pagination)
  limit: 56, # Integer | The limit of items count to retrieve.
  email: 'user@example.com' # String | A given e-mail address to filter on.
}

begin
  # List Users
  result = api_instance.get_users(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->get_users: #{e}"
end
```

#### Using the get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUsers200Response>, Integer, Hash)> get_users_with_http_info(opts)

```ruby
begin
  # List Users
  data, status_code, headers = api_instance.get_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUsers200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 100] |
| **email** | **String** | A given e-mail address to filter on. | [optional] |

### Return type

[**GetUsers200Response**](GetUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users_user_id

> <User> get_users_user_id(user_id)

Get a User

Retrieves a given User within your Organization.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::UserApi.new
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | User Id

begin
  # Get a User
  result = api_instance.get_users_user_id(user_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->get_users_user_id: #{e}"
end
```

#### Using the get_users_user_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_users_user_id_with_http_info(user_id)

```ruby
begin
  # Get a User
  data, status_code, headers = api_instance.get_users_user_id_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->get_users_user_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User Id |  |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_users_user_id

> <User> patch_users_user_id(user_id, opts)

Update a User

Updates a given User. Any parameters not provided are left unchanged. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::UserApi.new
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | User Id
opts = {
  update_user: YousignClientV3::UpdateUser.new # UpdateUser | 
}

begin
  # Update a User
  result = api_instance.patch_users_user_id(user_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->patch_users_user_id: #{e}"
end
```

#### Using the patch_users_user_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> patch_users_user_id_with_http_info(user_id, opts)

```ruby
begin
  # Update a User
  data, status_code, headers = api_instance.patch_users_user_id_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->patch_users_user_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User Id |  |
| **update_user** | [**UpdateUser**](UpdateUser.md) |  | [optional] |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_users

> <User> post_users(opts)

Create a new User

Creates a new application User and sends them an invitation email. `email`: The email address must not match any existing User’s email. `workspaces`: The new User must be associated with at least one Workspace in the Organization. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::UserApi.new
opts = {
  create_user: YousignClientV3::CreateUser.new({email: 'john.doe@example.com', role: 'admin', locale: YousignClientV3::Locale::EN, workspaces: ['9a93d3b5-fb3b-4abf-9e70-26315b33506c']}) # CreateUser | 
}

begin
  # Create a new User
  result = api_instance.post_users(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->post_users: #{e}"
end
```

#### Using the post_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> post_users_with_http_info(opts)

```ruby
begin
  # Create a new User
  data, status_code, headers = api_instance.post_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->post_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_user** | [**CreateUser**](CreateUser.md) |  | [optional] |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_workspaces_workspace_id_users

> put_workspaces_workspace_id_users(workspace_id, user_id)

Associate a user to a workspace

Associates a User with a given Workspace.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::UserApi.new
workspace_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workspace Id
user_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | User Id

begin
  # Associate a user to a workspace
  api_instance.put_workspaces_workspace_id_users(workspace_id, user_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->put_workspaces_workspace_id_users: #{e}"
end
```

#### Using the put_workspaces_workspace_id_users_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_workspaces_workspace_id_users_with_http_info(workspace_id, user_id)

```ruby
begin
  # Associate a user to a workspace
  data, status_code, headers = api_instance.put_workspaces_workspace_id_users_with_http_info(workspace_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling UserApi->put_workspaces_workspace_id_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | Workspace Id |  |
| **user_id** | **String** | User Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

