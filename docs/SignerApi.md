# YousignClientV3::SignerApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_signature_requests_signature_request_id_signers_signer_id**](SignerApi.md#delete_signature_requests_signature_request_id_signers_signer_id) | **DELETE** /signature_requests/{signatureRequestId}/signers/{signerId} | Delete a Signer |
| [**get_signature_requests_signature_request_id_signers**](SignerApi.md#get_signature_requests_signature_request_id_signers) | **GET** /signature_requests/{signatureRequestId}/signers | List Signature Request&#39;s Signers |
| [**get_signers_signers_id**](SignerApi.md#get_signers_signers_id) | **GET** /signature_requests/{signatureRequestId}/signers/{signerId} | Get a Signer |
| [**patch_signature_requests_signature_request_id_signers_signer_id**](SignerApi.md#patch_signature_requests_signature_request_id_signers_signer_id) | **PATCH** /signature_requests/{signatureRequestId}/signers/{signerId} | Update a Signer |
| [**post_signature_requests_signature_request_id_signers**](SignerApi.md#post_signature_requests_signature_request_id_signers) | **POST** /signature_requests/{signatureRequestId}/signers | Create a new Signer |
| [**post_signature_requests_signature_request_id_signers_signer_id_send_otp**](SignerApi.md#post_signature_requests_signature_request_id_signers_signer_id_send_otp) | **POST** /signature_requests/{signatureRequestId}/signers/{signerId}/send_otp | Send a One-Time Password (OTP) to a Signer |
| [**post_signature_requests_signature_request_id_signers_signer_id_send_reminder**](SignerApi.md#post_signature_requests_signature_request_id_signers_signer_id_send_reminder) | **POST** /signature_requests/{signatureRequestId}/signers/{signerId}/send_reminder | Send manual reminder to a Signer |
| [**post_signature_requests_signature_request_id_signers_signer_id_sign**](SignerApi.md#post_signature_requests_signature_request_id_signers_signer_id_sign) | **POST** /signature_requests/{signatureRequestId}/signers/{signerId}/sign | Sign a Signature Request |


## delete_signature_requests_signature_request_id_signers_signer_id

> delete_signature_requests_signature_request_id_signers_signer_id(signature_request_id, signer_id)

Delete a Signer

Deletes a given Signer from a Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # Delete a Signer
  api_instance.delete_signature_requests_signature_request_id_signers_signer_id(signature_request_id, signer_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->delete_signature_requests_signature_request_id_signers_signer_id: #{e}"
end
```

#### Using the delete_signature_requests_signature_request_id_signers_signer_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_requests_signature_request_id_signers_signer_id_with_http_info(signature_request_id, signer_id)

```ruby
begin
  # Delete a Signer
  data, status_code, headers = api_instance.delete_signature_requests_signature_request_id_signers_signer_id_with_http_info(signature_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->delete_signature_requests_signature_request_id_signers_signer_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests_signature_request_id_signers

> <Array<Signer>> get_signature_requests_signature_request_id_signers(signature_request_id)

List Signature Request's Signers

Returns a list of Signers for a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id

begin
  # List Signature Request's Signers
  result = api_instance.get_signature_requests_signature_request_id_signers(signature_request_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->get_signature_requests_signature_request_id_signers: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_signers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Signer>>, Integer, Hash)> get_signature_requests_signature_request_id_signers_with_http_info(signature_request_id)

```ruby
begin
  # List Signature Request's Signers
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_signers_with_http_info(signature_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Signer>>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->get_signature_requests_signature_request_id_signers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |

### Return type

[**Array&lt;Signer&gt;**](Signer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signers_signers_id

> <Signer> get_signers_signers_id(signature_request_id, signer_id)

Get a Signer

Retrieves a given Signer.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # Get a Signer
  result = api_instance.get_signers_signers_id(signature_request_id, signer_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->get_signers_signers_id: #{e}"
end
```

#### Using the get_signers_signers_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Signer>, Integer, Hash)> get_signers_signers_id_with_http_info(signature_request_id, signer_id)

```ruby
begin
  # Get a Signer
  data, status_code, headers = api_instance.get_signers_signers_id_with_http_info(signature_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Signer>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->get_signers_signers_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

[**Signer**](Signer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_signature_requests_signature_request_id_signers_signer_id

> <Signer> patch_signature_requests_signature_request_id_signers_signer_id(signature_request_id, signer_id, opts)

Update a Signer

Updates a given Signer. Any parameters not provided are left unchanged. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id
opts = {
  update_signer: YousignClientV3::UpdateSigner.new # UpdateSigner | 
}

begin
  # Update a Signer
  result = api_instance.patch_signature_requests_signature_request_id_signers_signer_id(signature_request_id, signer_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->patch_signature_requests_signature_request_id_signers_signer_id: #{e}"
end
```

#### Using the patch_signature_requests_signature_request_id_signers_signer_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Signer>, Integer, Hash)> patch_signature_requests_signature_request_id_signers_signer_id_with_http_info(signature_request_id, signer_id, opts)

```ruby
begin
  # Update a Signer
  data, status_code, headers = api_instance.patch_signature_requests_signature_request_id_signers_signer_id_with_http_info(signature_request_id, signer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Signer>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->patch_signature_requests_signature_request_id_signers_signer_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **signer_id** | **String** | Signer Id |  |
| **update_signer** | [**UpdateSigner**](UpdateSigner.md) |  | [optional] |

### Return type

[**Signer**](Signer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_signature_requests_signature_request_id_signers

> <Signer> post_signature_requests_signature_request_id_signers(signature_request_id, opts)

Create a new Signer

Adds a Signer to a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  create_signer: YousignClientV3::FromExistingContact1.new({contact_id: '9a93d3b5-fb3b-4abf-9e70-26315b33506c', signature_level: 'electronic_signature'}) # CreateSigner | 
}

begin
  # Create a new Signer
  result = api_instance.post_signature_requests_signature_request_id_signers(signature_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->post_signature_requests_signature_request_id_signers: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_signers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Signer>, Integer, Hash)> post_signature_requests_signature_request_id_signers_with_http_info(signature_request_id, opts)

```ruby
begin
  # Create a new Signer
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_signers_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Signer>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->post_signature_requests_signature_request_id_signers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **create_signer** | [**CreateSigner**](CreateSigner.md) |  | [optional] |

### Return type

[**Signer**](Signer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_signature_requests_signature_request_id_signers_signer_id_send_otp

> post_signature_requests_signature_request_id_signers_signer_id_send_otp(signature_request_id, signer_id)

Send a One-Time Password (OTP) to a Signer

Send a One-Time Password (OTP) to a given Signer. Use this endpoint only if you use your own signing flow.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # Send a One-Time Password (OTP) to a Signer
  api_instance.post_signature_requests_signature_request_id_signers_signer_id_send_otp(signature_request_id, signer_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->post_signature_requests_signature_request_id_signers_signer_id_send_otp: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_signers_signer_id_send_otp_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_signature_requests_signature_request_id_signers_signer_id_send_otp_with_http_info(signature_request_id, signer_id)

```ruby
begin
  # Send a One-Time Password (OTP) to a Signer
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_signers_signer_id_send_otp_with_http_info(signature_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->post_signature_requests_signature_request_id_signers_signer_id_send_otp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_signature_requests_signature_request_id_signers_signer_id_send_reminder

> post_signature_requests_signature_request_id_signers_signer_id_send_reminder(signature_request_id, signer_id)

Send manual reminder to a Signer

Sends a reminder to a given signer to complete their Signature Request. Only possible when the Signature Request status is `ongoing` and the Signer status is `notified`. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # Send manual reminder to a Signer
  api_instance.post_signature_requests_signature_request_id_signers_signer_id_send_reminder(signature_request_id, signer_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->post_signature_requests_signature_request_id_signers_signer_id_send_reminder: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_signers_signer_id_send_reminder_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_signature_requests_signature_request_id_signers_signer_id_send_reminder_with_http_info(signature_request_id, signer_id)

```ruby
begin
  # Send manual reminder to a Signer
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_signers_signer_id_send_reminder_with_http_info(signature_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->post_signature_requests_signature_request_id_signers_signer_id_send_reminder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_signature_requests_signature_request_id_signers_signer_id_sign

> post_signature_requests_signature_request_id_signers_signer_id_sign(signature_request_id, signer_id, opts)

Sign a Signature Request

Sign a Signature Request on behalf of a given Signer.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id
opts = {
  signer_sign: YousignClientV3::SignerSign.new({ip_address: nil, consent_given_at: Time.parse('2024-01-18T22:00Z')}) # SignerSign | 
}

begin
  # Sign a Signature Request
  api_instance.post_signature_requests_signature_request_id_signers_signer_id_sign(signature_request_id, signer_id, opts)
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->post_signature_requests_signature_request_id_signers_signer_id_sign: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_signers_signer_id_sign_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_signature_requests_signature_request_id_signers_signer_id_sign_with_http_info(signature_request_id, signer_id, opts)

```ruby
begin
  # Sign a Signature Request
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_signers_signer_id_sign_with_http_info(signature_request_id, signer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerApi->post_signature_requests_signature_request_id_signers_signer_id_sign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **signer_id** | **String** | Signer Id |  |
| **signer_sign** | [**SignerSign**](SignerSign.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

