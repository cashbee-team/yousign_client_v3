# YousignClientV3::IdentityVerificationApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_identity_verifications**](IdentityVerificationApi.md#get_identity_verifications) | **GET** /video_identity_verifications | List Identity Verifications |
| [**get_identity_verifications_identity_verification_id**](IdentityVerificationApi.md#get_identity_verifications_identity_verification_id) | **GET** /video_identity_verifications/{identityVerificationId} | Retrieve an identity verification |
| [**post_identity_verifications**](IdentityVerificationApi.md#post_identity_verifications) | **POST** /video_identity_verifications | Initiate a new Identity Verification |


## get_identity_verifications

> <GetIdentityVerifications200Response> get_identity_verifications(opts)

List Identity Verifications

Returns the list of all Identity Verifications within your organization.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::IdentityVerificationApi.new
opts = {
  after: 'after_example', # String | After cursor (pagination)
  limit: 56, # Integer | The limit of items count to retrieve.
  status: 'pending' # String | Filter by status
}

begin
  # List Identity Verifications
  result = api_instance.get_identity_verifications(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling IdentityVerificationApi->get_identity_verifications: #{e}"
end
```

#### Using the get_identity_verifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIdentityVerifications200Response>, Integer, Hash)> get_identity_verifications_with_http_info(opts)

```ruby
begin
  # List Identity Verifications
  data, status_code, headers = api_instance.get_identity_verifications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIdentityVerifications200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling IdentityVerificationApi->get_identity_verifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 100] |
| **status** | **String** | Filter by status | [optional] |

### Return type

[**GetIdentityVerifications200Response**](GetIdentityVerifications200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_identity_verifications_identity_verification_id

> <GetIdentityVerificationsIdentityVerificationId200Response> get_identity_verifications_identity_verification_id(identity_verification_id)

Retrieve an identity verification

Get the detailed results of an Identity Verification.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::IdentityVerificationApi.new
identity_verification_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Identity verification ID

begin
  # Retrieve an identity verification
  result = api_instance.get_identity_verifications_identity_verification_id(identity_verification_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling IdentityVerificationApi->get_identity_verifications_identity_verification_id: #{e}"
end
```

#### Using the get_identity_verifications_identity_verification_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIdentityVerificationsIdentityVerificationId200Response>, Integer, Hash)> get_identity_verifications_identity_verification_id_with_http_info(identity_verification_id)

```ruby
begin
  # Retrieve an identity verification
  data, status_code, headers = api_instance.get_identity_verifications_identity_verification_id_with_http_info(identity_verification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIdentityVerificationsIdentityVerificationId200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling IdentityVerificationApi->get_identity_verifications_identity_verification_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identity_verification_id** | **String** | The Identity verification ID |  |

### Return type

[**GetIdentityVerificationsIdentityVerificationId200Response**](GetIdentityVerificationsIdentityVerificationId200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_identity_verifications

> <VideoIdentityVerificationCreated> post_identity_verifications(opts)

Initiate a new Identity Verification

Creates a new Identity Verification resource.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::IdentityVerificationApi.new
opts = {
  create_video_identity_verification: YousignClientV3::CreateVideoIdentityVerification.new({first_name: 'John', last_name: 'Doe', redirection_url: 'https://www.redirectionurl.com'}) # CreateVideoIdentityVerification | 
}

begin
  # Initiate a new Identity Verification
  result = api_instance.post_identity_verifications(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling IdentityVerificationApi->post_identity_verifications: #{e}"
end
```

#### Using the post_identity_verifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VideoIdentityVerificationCreated>, Integer, Hash)> post_identity_verifications_with_http_info(opts)

```ruby
begin
  # Initiate a new Identity Verification
  data, status_code, headers = api_instance.post_identity_verifications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VideoIdentityVerificationCreated>
rescue YousignClientV3::ApiError => e
  puts "Error when calling IdentityVerificationApi->post_identity_verifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_video_identity_verification** | [**CreateVideoIdentityVerification**](CreateVideoIdentityVerification.md) |  | [optional] |

### Return type

[**VideoIdentityVerificationCreated**](VideoIdentityVerificationCreated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

