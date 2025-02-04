# YousignClientV3::ApproverApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_signature_requests_signature_request_id_approvers_approver_id**](ApproverApi.md#delete_signature_requests_signature_request_id_approvers_approver_id) | **DELETE** /signature_requests/{signatureRequestId}/approvers/{approverId} | Delete an Approver |
| [**get_signature_requests_signature_request_id_approvers_approver_id**](ApproverApi.md#get_signature_requests_signature_request_id_approvers_approver_id) | **GET** /signature_requests/{signatureRequestId}/approvers/{approverId} | Get an Approver |
| [**patch_signature_requests_signature_request_id_approvers_approver_id**](ApproverApi.md#patch_signature_requests_signature_request_id_approvers_approver_id) | **PATCH** /signature_requests/{signatureRequestId}/approvers/{approverId} | Update an Approver |
| [**post_signature_requests_signature_request_id_approvers**](ApproverApi.md#post_signature_requests_signature_request_id_approvers) | **POST** /signature_requests/{signatureRequestId}/approvers | Create a new Approver |
| [**post_signature_requests_signature_request_id_approvers_approver_id_send_reminder**](ApproverApi.md#post_signature_requests_signature_request_id_approvers_approver_id_send_reminder) | **POST** /signature_requests/{signatureRequestId}/approvers/{approverId}/send_reminder | Send manual reminder to an Approver |


## delete_signature_requests_signature_request_id_approvers_approver_id

> delete_signature_requests_signature_request_id_approvers_approver_id(signature_request_id, approver_id)

Delete an Approver

Deletes a given Approver from a Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ApproverApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
approver_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Approver Id

begin
  # Delete an Approver
  api_instance.delete_signature_requests_signature_request_id_approvers_approver_id(signature_request_id, approver_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling ApproverApi->delete_signature_requests_signature_request_id_approvers_approver_id: #{e}"
end
```

#### Using the delete_signature_requests_signature_request_id_approvers_approver_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_requests_signature_request_id_approvers_approver_id_with_http_info(signature_request_id, approver_id)

```ruby
begin
  # Delete an Approver
  data, status_code, headers = api_instance.delete_signature_requests_signature_request_id_approvers_approver_id_with_http_info(signature_request_id, approver_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling ApproverApi->delete_signature_requests_signature_request_id_approvers_approver_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **approver_id** | **String** | Approver Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests_signature_request_id_approvers_approver_id

> <Approver> get_signature_requests_signature_request_id_approvers_approver_id(signature_request_id, approver_id)

Get an Approver

Retrieves a given Approver.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ApproverApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
approver_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Approver Id

begin
  # Get an Approver
  result = api_instance.get_signature_requests_signature_request_id_approvers_approver_id(signature_request_id, approver_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ApproverApi->get_signature_requests_signature_request_id_approvers_approver_id: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_approvers_approver_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Approver>, Integer, Hash)> get_signature_requests_signature_request_id_approvers_approver_id_with_http_info(signature_request_id, approver_id)

```ruby
begin
  # Get an Approver
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_approvers_approver_id_with_http_info(signature_request_id, approver_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Approver>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ApproverApi->get_signature_requests_signature_request_id_approvers_approver_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **approver_id** | **String** | Approver Id |  |

### Return type

[**Approver**](Approver.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_signature_requests_signature_request_id_approvers_approver_id

> <Approver> patch_signature_requests_signature_request_id_approvers_approver_id(signature_request_id, approver_id, opts)

Update an Approver

Updates a given Approver. Any parameters not provided are left unchanged.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ApproverApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
approver_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Approver Id
opts = {
  patch_signature_requests_signature_request_id_approvers_approver_id_request: YousignClientV3::PatchSignatureRequestsSignatureRequestIdApproversApproverIdRequest.new # PatchSignatureRequestsSignatureRequestIdApproversApproverIdRequest | 
}

begin
  # Update an Approver
  result = api_instance.patch_signature_requests_signature_request_id_approvers_approver_id(signature_request_id, approver_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ApproverApi->patch_signature_requests_signature_request_id_approvers_approver_id: #{e}"
end
```

#### Using the patch_signature_requests_signature_request_id_approvers_approver_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Approver>, Integer, Hash)> patch_signature_requests_signature_request_id_approvers_approver_id_with_http_info(signature_request_id, approver_id, opts)

```ruby
begin
  # Update an Approver
  data, status_code, headers = api_instance.patch_signature_requests_signature_request_id_approvers_approver_id_with_http_info(signature_request_id, approver_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Approver>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ApproverApi->patch_signature_requests_signature_request_id_approvers_approver_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **approver_id** | **String** | Approver Id |  |
| **patch_signature_requests_signature_request_id_approvers_approver_id_request** | [**PatchSignatureRequestsSignatureRequestIdApproversApproverIdRequest**](PatchSignatureRequestsSignatureRequestIdApproversApproverIdRequest.md) |  | [optional] |

### Return type

[**Approver**](Approver.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_signature_requests_signature_request_id_approvers

> <Approver> post_signature_requests_signature_request_id_approvers(signature_request_id, opts)

Create a new Approver

Adds an Approver to a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ApproverApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  post_signature_requests_signature_request_id_approvers_request: YousignClientV3::FromExistingContact.new({contact_id: '8b6ed2f3-244f-487a-baa1-bbe4f51c8744'}) # PostSignatureRequestsSignatureRequestIdApproversRequest | An Approver object to be added to the Signature Request.
}

begin
  # Create a new Approver
  result = api_instance.post_signature_requests_signature_request_id_approvers(signature_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ApproverApi->post_signature_requests_signature_request_id_approvers: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_approvers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Approver>, Integer, Hash)> post_signature_requests_signature_request_id_approvers_with_http_info(signature_request_id, opts)

```ruby
begin
  # Create a new Approver
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_approvers_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Approver>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ApproverApi->post_signature_requests_signature_request_id_approvers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **post_signature_requests_signature_request_id_approvers_request** | [**PostSignatureRequestsSignatureRequestIdApproversRequest**](PostSignatureRequestsSignatureRequestIdApproversRequest.md) | An Approver object to be added to the Signature Request. | [optional] |

### Return type

[**Approver**](Approver.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_signature_requests_signature_request_id_approvers_approver_id_send_reminder

> post_signature_requests_signature_request_id_approvers_approver_id_send_reminder(signature_request_id, approver_id)

Send manual reminder to an Approver

Sends a reminder to a given Approver to review their Signature Request. Only possible when the Signature Request status is `approval` and the Approver status is `notified`. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ApproverApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
approver_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Approver Id

begin
  # Send manual reminder to an Approver
  api_instance.post_signature_requests_signature_request_id_approvers_approver_id_send_reminder(signature_request_id, approver_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling ApproverApi->post_signature_requests_signature_request_id_approvers_approver_id_send_reminder: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_approvers_approver_id_send_reminder_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_signature_requests_signature_request_id_approvers_approver_id_send_reminder_with_http_info(signature_request_id, approver_id)

```ruby
begin
  # Send manual reminder to an Approver
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_approvers_approver_id_send_reminder_with_http_info(signature_request_id, approver_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling ApproverApi->post_signature_requests_signature_request_id_approvers_approver_id_send_reminder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **approver_id** | **String** | Approver Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

