# YousignClientV3::FollowerApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_signature_requests_signature_request_id_followers**](FollowerApi.md#get_signature_requests_signature_request_id_followers) | **GET** /signature_requests/{signatureRequestId}/followers | List the Signature Request&#39;s Followers |
| [**post_signature_requests_signature_request_id_followers**](FollowerApi.md#post_signature_requests_signature_request_id_followers) | **POST** /signature_requests/{signatureRequestId}/followers | Create new Followers |


## get_signature_requests_signature_request_id_followers

> <GetSignatureRequestsSignatureRequestIdFollowers200Response> get_signature_requests_signature_request_id_followers(signature_request_id)

List the Signature Request's Followers

Returns a list of Followers for a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::FollowerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id

begin
  # List the Signature Request's Followers
  result = api_instance.get_signature_requests_signature_request_id_followers(signature_request_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling FollowerApi->get_signature_requests_signature_request_id_followers: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSignatureRequestsSignatureRequestIdFollowers200Response>, Integer, Hash)> get_signature_requests_signature_request_id_followers_with_http_info(signature_request_id)

```ruby
begin
  # List the Signature Request's Followers
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_followers_with_http_info(signature_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSignatureRequestsSignatureRequestIdFollowers200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling FollowerApi->get_signature_requests_signature_request_id_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |

### Return type

[**GetSignatureRequestsSignatureRequestIdFollowers200Response**](GetSignatureRequestsSignatureRequestIdFollowers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_signature_requests_signature_request_id_followers

> <Array<Follower>> post_signature_requests_signature_request_id_followers(signature_request_id, opts)

Create new Followers

Adds a Follower to a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::FollowerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  create_followers_inner: [YousignClientV3::CreateFollowersInner.new({email: 'john.doe@example.com', locale: YousignClientV3::Locale::EN})] # Array<CreateFollowersInner> | 
}

begin
  # Create new Followers
  result = api_instance.post_signature_requests_signature_request_id_followers(signature_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling FollowerApi->post_signature_requests_signature_request_id_followers: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Follower>>, Integer, Hash)> post_signature_requests_signature_request_id_followers_with_http_info(signature_request_id, opts)

```ruby
begin
  # Create new Followers
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_followers_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Follower>>
rescue YousignClientV3::ApiError => e
  puts "Error when calling FollowerApi->post_signature_requests_signature_request_id_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **create_followers_inner** | [**Array&lt;CreateFollowersInner&gt;**](CreateFollowersInner.md) |  | [optional] |

### Return type

[**Array&lt;Follower&gt;**](Follower.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

