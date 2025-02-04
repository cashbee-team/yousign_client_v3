# YousignClientV3::WorkspaceApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_workspace**](WorkspaceApi.md#delete_workspace) | **DELETE** /workspaces/{workspaceId} | Delete a Workspace |
| [**get_workspaces**](WorkspaceApi.md#get_workspaces) | **GET** /workspaces | List Workspaces |
| [**get_workspaces_default**](WorkspaceApi.md#get_workspaces_default) | **GET** /workspaces/default | Get the default Workspace |
| [**get_workspaces_workspace_id**](WorkspaceApi.md#get_workspaces_workspace_id) | **GET** /workspaces/{workspaceId} | Get a Workspace |
| [**mark_workspace_as_default**](WorkspaceApi.md#mark_workspace_as_default) | **POST** /workspaces/default | Mark the given Workspace as default |
| [**patch_workspaces_workspace_id**](WorkspaceApi.md#patch_workspaces_workspace_id) | **PATCH** /workspaces/{workspaceId} | Update a Workspace |
| [**post_workspace**](WorkspaceApi.md#post_workspace) | **POST** /workspaces | Create a Workspace |


## delete_workspace

> delete_workspace(workspace_id, opts)

Delete a Workspace

Deletes a given Workspace and transfers everything that is attached to this Workspace to a another specified Workspace.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WorkspaceApi.new
workspace_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workspace Id
opts = {
  delete_workspace: YousignClientV3::DeleteWorkspace.new({workspace_id: 'workspace_id_example'}) # DeleteWorkspace | 
}

begin
  # Delete a Workspace
  api_instance.delete_workspace(workspace_id, opts)
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->delete_workspace: #{e}"
end
```

#### Using the delete_workspace_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_workspace_with_http_info(workspace_id, opts)

```ruby
begin
  # Delete a Workspace
  data, status_code, headers = api_instance.delete_workspace_with_http_info(workspace_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->delete_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | Workspace Id |  |
| **delete_workspace** | [**DeleteWorkspace**](DeleteWorkspace.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_workspaces

> <GetWorkspaces200Response> get_workspaces(opts)

List Workspaces

Returns the list of all Workspaces within your Organization.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WorkspaceApi.new
opts = {
  after: 'after_example', # String | After cursor (pagination)
  limit: 56 # Integer | The limit of items count to retrieve.
}

begin
  # List Workspaces
  result = api_instance.get_workspaces(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->get_workspaces: #{e}"
end
```

#### Using the get_workspaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkspaces200Response>, Integer, Hash)> get_workspaces_with_http_info(opts)

```ruby
begin
  # List Workspaces
  data, status_code, headers = api_instance.get_workspaces_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkspaces200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->get_workspaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 10] |

### Return type

[**GetWorkspaces200Response**](GetWorkspaces200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspaces_default

> <Workspace> get_workspaces_default

Get the default Workspace

Retrieves the default Workspace.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WorkspaceApi.new

begin
  # Get the default Workspace
  result = api_instance.get_workspaces_default
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->get_workspaces_default: #{e}"
end
```

#### Using the get_workspaces_default_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workspace>, Integer, Hash)> get_workspaces_default_with_http_info

```ruby
begin
  # Get the default Workspace
  data, status_code, headers = api_instance.get_workspaces_default_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workspace>
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->get_workspaces_default_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Workspace**](Workspace.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspaces_workspace_id

> <Workspace> get_workspaces_workspace_id(workspace_id)

Get a Workspace

Retrieves a given Workspace.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WorkspaceApi.new
workspace_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workspace Id

begin
  # Get a Workspace
  result = api_instance.get_workspaces_workspace_id(workspace_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->get_workspaces_workspace_id: #{e}"
end
```

#### Using the get_workspaces_workspace_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workspace>, Integer, Hash)> get_workspaces_workspace_id_with_http_info(workspace_id)

```ruby
begin
  # Get a Workspace
  data, status_code, headers = api_instance.get_workspaces_workspace_id_with_http_info(workspace_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workspace>
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->get_workspaces_workspace_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | Workspace Id |  |

### Return type

[**Workspace**](Workspace.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mark_workspace_as_default

> mark_workspace_as_default(opts)

Mark the given Workspace as default

Marks the given Workspace as default.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WorkspaceApi.new
opts = {
  mark_workspace_as_default: YousignClientV3::MarkWorkspaceAsDefault.new({workspace_id: 'workspace_id_example'}) # MarkWorkspaceAsDefault | 
}

begin
  # Mark the given Workspace as default
  api_instance.mark_workspace_as_default(opts)
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->mark_workspace_as_default: #{e}"
end
```

#### Using the mark_workspace_as_default_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mark_workspace_as_default_with_http_info(opts)

```ruby
begin
  # Mark the given Workspace as default
  data, status_code, headers = api_instance.mark_workspace_as_default_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->mark_workspace_as_default_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mark_workspace_as_default** | [**MarkWorkspaceAsDefault**](MarkWorkspaceAsDefault.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_workspaces_workspace_id

> <Workspace> patch_workspaces_workspace_id(workspace_id, opts)

Update a Workspace

Updates a given Workspace. Any parameters not provided are left unchanged. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WorkspaceApi.new
workspace_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Workspace Id
opts = {
  update_workspace: YousignClientV3::UpdateWorkspace.new # UpdateWorkspace | 
}

begin
  # Update a Workspace
  result = api_instance.patch_workspaces_workspace_id(workspace_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->patch_workspaces_workspace_id: #{e}"
end
```

#### Using the patch_workspaces_workspace_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workspace>, Integer, Hash)> patch_workspaces_workspace_id_with_http_info(workspace_id, opts)

```ruby
begin
  # Update a Workspace
  data, status_code, headers = api_instance.patch_workspaces_workspace_id_with_http_info(workspace_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workspace>
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->patch_workspaces_workspace_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | Workspace Id |  |
| **update_workspace** | [**UpdateWorkspace**](UpdateWorkspace.md) |  | [optional] |

### Return type

[**Workspace**](Workspace.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_workspace

> <Workspace> post_workspace(opts)

Create a Workspace

Creates a new Workspace in the organization.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WorkspaceApi.new
opts = {
  create_workspace: YousignClientV3::CreateWorkspace.new({name: 'Sales'}) # CreateWorkspace | 
}

begin
  # Create a Workspace
  result = api_instance.post_workspace(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->post_workspace: #{e}"
end
```

#### Using the post_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workspace>, Integer, Hash)> post_workspace_with_http_info(opts)

```ruby
begin
  # Create a Workspace
  data, status_code, headers = api_instance.post_workspace_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workspace>
rescue YousignClientV3::ApiError => e
  puts "Error when calling WorkspaceApi->post_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_workspace** | [**CreateWorkspace**](CreateWorkspace.md) |  | [optional] |

### Return type

[**Workspace**](Workspace.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

