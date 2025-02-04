# YousignClientV3::SignatureRequestApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_signature_requests_signature_request_id**](SignatureRequestApi.md#delete_signature_requests_signature_request_id) | **DELETE** /signature_requests/{signatureRequestId} | Delete a Signature Request |
| [**get_signature_requests**](SignatureRequestApi.md#get_signature_requests) | **GET** /signature_requests | List Signature Requests |
| [**get_signature_requests_signature_request_id**](SignatureRequestApi.md#get_signature_requests_signature_request_id) | **GET** /signature_requests/{signatureRequestId} | Fetch a Signature Request |
| [**patch_signature_requests_signature_request_id**](SignatureRequestApi.md#patch_signature_requests_signature_request_id) | **PATCH** /signature_requests/{signatureRequestId} | Update a Signature Request |
| [**post_signature_requests**](SignatureRequestApi.md#post_signature_requests) | **POST** /signature_requests | Initiate a new Signature Request |
| [**post_signature_requests_signature_request_id_activate**](SignatureRequestApi.md#post_signature_requests_signature_request_id_activate) | **POST** /signature_requests/{signatureRequestId}/activate | Activate a Signature Request |
| [**post_signature_requests_signature_request_id_cancel**](SignatureRequestApi.md#post_signature_requests_signature_request_id_cancel) | **POST** /signature_requests/{signatureRequestId}/cancel | Cancel a Signature Request |
| [**post_signature_requests_signature_request_id_reactivate**](SignatureRequestApi.md#post_signature_requests_signature_request_id_reactivate) | **POST** /signature_requests/{signatureRequestId}/reactivate | Reactivate an expired Signature Request |


## delete_signature_requests_signature_request_id

> delete_signature_requests_signature_request_id(signature_request_id, opts)

Delete a Signature Request

Deletes a given Signature Request, not possible if the Signature Request is in `approval` and `ongoing` status.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  permanent_delete: true # Boolean | If true it will permanently delete the Signature Request. It will no longer be retrievable.
}

begin
  # Delete a Signature Request
  api_instance.delete_signature_requests_signature_request_id(signature_request_id, opts)
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->delete_signature_requests_signature_request_id: #{e}"
end
```

#### Using the delete_signature_requests_signature_request_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_requests_signature_request_id_with_http_info(signature_request_id, opts)

```ruby
begin
  # Delete a Signature Request
  data, status_code, headers = api_instance.delete_signature_requests_signature_request_id_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->delete_signature_requests_signature_request_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **permanent_delete** | **Boolean** | If true it will permanently delete the Signature Request. It will no longer be retrievable. | [optional][default to false] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests

> <GetSignatureRequests200Response> get_signature_requests(opts)

List Signature Requests

Returns the list of all Signatures Requests in your organization. You can limit the number of items returned by using filters and pagination. Consult our guide for more details and examples.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignatureRequestApi.new
opts = {
  after: 'after_example', # String | After cursor (pagination)
  limit: 56, # Integer | The limit of items count to retrieve.
  status: { key: 3.56}, # Object | Filter by `status`. Allowed operators: `eq`, `in`. Example: `status[in]=draft,done` 
  workspace_id: { key: 3.56}, # Object | Filter by `workspace_id`. Allowed operators: `eq`. Example: `workspace_id[eq]=9b6ed2f3-244f-487a-baa1-bbe4f51c8748` 
  external_id: { key: 3.56}, # Object | Filter by `external_id`. Allowed operators: `eq`. Example: `external_id[eq]=an-external-id` 
  source: { key: 3.56}, # Object | Filter by `source`. Allowed operators: `eq`, `in`. Example: `source[in]=public_api,app` 
  q: 'q_example' # String | Search on name
}

begin
  # List Signature Requests
  result = api_instance.get_signature_requests(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->get_signature_requests: #{e}"
end
```

#### Using the get_signature_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSignatureRequests200Response>, Integer, Hash)> get_signature_requests_with_http_info(opts)

```ruby
begin
  # List Signature Requests
  data, status_code, headers = api_instance.get_signature_requests_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSignatureRequests200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->get_signature_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 100] |
| **status** | [**Object**](.md) | Filter by &#x60;status&#x60;. Allowed operators: &#x60;eq&#x60;, &#x60;in&#x60;. Example: &#x60;status[in]&#x3D;draft,done&#x60;  | [optional] |
| **workspace_id** | [**Object**](.md) | Filter by &#x60;workspace_id&#x60;. Allowed operators: &#x60;eq&#x60;. Example: &#x60;workspace_id[eq]&#x3D;9b6ed2f3-244f-487a-baa1-bbe4f51c8748&#x60;  | [optional] |
| **external_id** | [**Object**](.md) | Filter by &#x60;external_id&#x60;. Allowed operators: &#x60;eq&#x60;. Example: &#x60;external_id[eq]&#x3D;an-external-id&#x60;  | [optional] |
| **source** | [**Object**](.md) | Filter by &#x60;source&#x60;. Allowed operators: &#x60;eq&#x60;, &#x60;in&#x60;. Example: &#x60;source[in]&#x3D;public_api,app&#x60;  | [optional] |
| **q** | **String** | Search on name | [optional] |

### Return type

[**GetSignatureRequests200Response**](GetSignatureRequests200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests_signature_request_id

> <SignatureRequest> get_signature_requests_signature_request_id(signature_request_id)

Fetch a Signature Request

Retrieves a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id

begin
  # Fetch a Signature Request
  result = api_instance.get_signature_requests_signature_request_id(signature_request_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->get_signature_requests_signature_request_id: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureRequest>, Integer, Hash)> get_signature_requests_signature_request_id_with_http_info(signature_request_id)

```ruby
begin
  # Fetch a Signature Request
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_with_http_info(signature_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureRequest>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->get_signature_requests_signature_request_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |

### Return type

[**SignatureRequest**](SignatureRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_signature_requests_signature_request_id

> <SignatureRequest> patch_signature_requests_signature_request_id(signature_request_id, opts)

Update a Signature Request

Updates a given Signature Request. Any parameters not provided are left unchanged.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  update_signature_request: YousignClientV3::UpdateSignatureRequest.new # UpdateSignatureRequest | 
}

begin
  # Update a Signature Request
  result = api_instance.patch_signature_requests_signature_request_id(signature_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->patch_signature_requests_signature_request_id: #{e}"
end
```

#### Using the patch_signature_requests_signature_request_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureRequest>, Integer, Hash)> patch_signature_requests_signature_request_id_with_http_info(signature_request_id, opts)

```ruby
begin
  # Update a Signature Request
  data, status_code, headers = api_instance.patch_signature_requests_signature_request_id_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureRequest>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->patch_signature_requests_signature_request_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **update_signature_request** | [**UpdateSignatureRequest**](UpdateSignatureRequest.md) |  | [optional] |

### Return type

[**SignatureRequest**](SignatureRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_signature_requests

> <SignatureRequest> post_signature_requests(opts)

Initiate a new Signature Request

Creates a new Signature Request resource.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignatureRequestApi.new
opts = {
  create_signature_request: YousignClientV3::CreateSignatureRequest.new({name: 'name_example', delivery_mode: 'none'}) # CreateSignatureRequest | 
}

begin
  # Initiate a new Signature Request
  result = api_instance.post_signature_requests(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->post_signature_requests: #{e}"
end
```

#### Using the post_signature_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureRequest>, Integer, Hash)> post_signature_requests_with_http_info(opts)

```ruby
begin
  # Initiate a new Signature Request
  data, status_code, headers = api_instance.post_signature_requests_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureRequest>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->post_signature_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_signature_request** | [**CreateSignatureRequest**](CreateSignatureRequest.md) |  | [optional] |

### Return type

[**SignatureRequest**](SignatureRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_signature_requests_signature_request_id_activate

> <SignatureRequestActivated> post_signature_requests_signature_request_id_activate(signature_request_id)

Activate a Signature Request

Activates a Signature request, so it is not in `draft` status anymore. If the `delivery_mode` is not `null`, activating the Signature Request will trigger the notifications to Approvers/Followers/Signers. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id

begin
  # Activate a Signature Request
  result = api_instance.post_signature_requests_signature_request_id_activate(signature_request_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->post_signature_requests_signature_request_id_activate: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_activate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureRequestActivated>, Integer, Hash)> post_signature_requests_signature_request_id_activate_with_http_info(signature_request_id)

```ruby
begin
  # Activate a Signature Request
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_activate_with_http_info(signature_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureRequestActivated>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->post_signature_requests_signature_request_id_activate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |

### Return type

[**SignatureRequestActivated**](SignatureRequestActivated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_signature_requests_signature_request_id_cancel

> <SignatureRequest> post_signature_requests_signature_request_id_cancel(signature_request_id, opts)

Cancel a Signature Request

Cancels a Signature Request when it is in `approval` or `ongoing` status. A canceled Signature Request cannot be reactivated.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  post_signature_requests_signature_request_id_cancel_request: YousignClientV3::PostSignatureRequestsSignatureRequestIdCancelRequest.new({reason: 'contractualization_aborted'}) # PostSignatureRequestsSignatureRequestIdCancelRequest | 
}

begin
  # Cancel a Signature Request
  result = api_instance.post_signature_requests_signature_request_id_cancel(signature_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->post_signature_requests_signature_request_id_cancel: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureRequest>, Integer, Hash)> post_signature_requests_signature_request_id_cancel_with_http_info(signature_request_id, opts)

```ruby
begin
  # Cancel a Signature Request
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_cancel_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureRequest>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->post_signature_requests_signature_request_id_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **post_signature_requests_signature_request_id_cancel_request** | [**PostSignatureRequestsSignatureRequestIdCancelRequest**](PostSignatureRequestsSignatureRequestIdCancelRequest.md) |  | [optional] |

### Return type

[**SignatureRequest**](SignatureRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_signature_requests_signature_request_id_reactivate

> <SignatureRequest> post_signature_requests_signature_request_id_reactivate(signature_request_id, opts)

Reactivate an expired Signature Request

Reactivates a Signature Request when it is in `expired` status.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  post_signature_requests_signature_request_id_reactivate_request: YousignClientV3::PostSignatureRequestsSignatureRequestIdReactivateRequest.new({expiration_date: Date.today}) # PostSignatureRequestsSignatureRequestIdReactivateRequest | 
}

begin
  # Reactivate an expired Signature Request
  result = api_instance.post_signature_requests_signature_request_id_reactivate(signature_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->post_signature_requests_signature_request_id_reactivate: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_reactivate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureRequest>, Integer, Hash)> post_signature_requests_signature_request_id_reactivate_with_http_info(signature_request_id, opts)

```ruby
begin
  # Reactivate an expired Signature Request
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_reactivate_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureRequest>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignatureRequestApi->post_signature_requests_signature_request_id_reactivate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **post_signature_requests_signature_request_id_reactivate_request** | [**PostSignatureRequestsSignatureRequestIdReactivateRequest**](PostSignatureRequestsSignatureRequestIdReactivateRequest.md) |  | [optional] |

### Return type

[**SignatureRequest**](SignatureRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

