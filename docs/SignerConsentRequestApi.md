# YousignClientV3::SignerConsentRequestApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_signature_requests_signature_request_id_consent_requests_consent_request_id**](SignerConsentRequestApi.md#delete_signature_requests_signature_request_id_consent_requests_consent_request_id) | **DELETE** /signature_requests/{signatureRequestId}/consent_requests/{consentRequestId} | Delete a Signer Consent Request |
| [**delete_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id**](SignerConsentRequestApi.md#delete_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id) | **DELETE** /signature_requests/{signatureRequestId}/consent_requests/{consentRequestId}/signers/{signerId} | Remove a Signer from a given Signer Consent Request |
| [**get_signature_requests_signature_request_id_signer_consent_requests**](SignerConsentRequestApi.md#get_signature_requests_signature_request_id_signer_consent_requests) | **GET** /signature_requests/{signatureRequestId}/consent_requests | List Signer Consent Requests of the Signature Request |
| [**patch_signature_requests_signature_request_id_consent_requests_consent_request_id**](SignerConsentRequestApi.md#patch_signature_requests_signature_request_id_consent_requests_consent_request_id) | **PATCH** /signature_requests/{signatureRequestId}/consent_requests/{consentRequestId} | Update a Signer Consent Request |
| [**post_signature_requests_signature_request_id_consent_requests**](SignerConsentRequestApi.md#post_signature_requests_signature_request_id_consent_requests) | **POST** /signature_requests/{signatureRequestId}/consent_requests | Add Signer Consent Request to a Signature Request |
| [**put_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id**](SignerConsentRequestApi.md#put_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id) | **PUT** /signature_requests/{signatureRequestId}/consent_requests/{consentRequestId}/signers/{signerId} | Adds a Signer to a given Signer Consent Request |


## delete_signature_requests_signature_request_id_consent_requests_consent_request_id

> delete_signature_requests_signature_request_id_consent_requests_consent_request_id(signature_request_id, consent_request_id)

Delete a Signer Consent Request

Delete a Signer Consent Request from signature request. This action is only permitted when the Signature Request is a draft.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerConsentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
consent_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Consent Request Id

begin
  # Delete a Signer Consent Request
  api_instance.delete_signature_requests_signature_request_id_consent_requests_consent_request_id(signature_request_id, consent_request_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->delete_signature_requests_signature_request_id_consent_requests_consent_request_id: #{e}"
end
```

#### Using the delete_signature_requests_signature_request_id_consent_requests_consent_request_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_requests_signature_request_id_consent_requests_consent_request_id_with_http_info(signature_request_id, consent_request_id)

```ruby
begin
  # Delete a Signer Consent Request
  data, status_code, headers = api_instance.delete_signature_requests_signature_request_id_consent_requests_consent_request_id_with_http_info(signature_request_id, consent_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->delete_signature_requests_signature_request_id_consent_requests_consent_request_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **consent_request_id** | **String** | Signer Consent Request Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id

> delete_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id(signature_request_id, consent_request_id, signer_id)

Remove a Signer from a given Signer Consent Request

Remove a Signer from a given Signer Consent Request. This action is only permitted when the Signature Request is a draft.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerConsentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
consent_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Consent Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # Remove a Signer from a given Signer Consent Request
  api_instance.delete_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id(signature_request_id, consent_request_id, signer_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->delete_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id: #{e}"
end
```

#### Using the delete_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id_with_http_info(signature_request_id, consent_request_id, signer_id)

```ruby
begin
  # Remove a Signer from a given Signer Consent Request
  data, status_code, headers = api_instance.delete_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id_with_http_info(signature_request_id, consent_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->delete_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **consent_request_id** | **String** | Signer Consent Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signature_requests_signature_request_id_signer_consent_requests

> <GetSignatureRequestsSignatureRequestIdSignerConsentRequests200Response> get_signature_requests_signature_request_id_signer_consent_requests(signature_request_id)

List Signer Consent Requests of the Signature Request

Returns a list of Signer Consent Requests for a given Signature Request.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerConsentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id

begin
  # List Signer Consent Requests of the Signature Request
  result = api_instance.get_signature_requests_signature_request_id_signer_consent_requests(signature_request_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->get_signature_requests_signature_request_id_signer_consent_requests: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_signer_consent_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSignatureRequestsSignatureRequestIdSignerConsentRequests200Response>, Integer, Hash)> get_signature_requests_signature_request_id_signer_consent_requests_with_http_info(signature_request_id)

```ruby
begin
  # List Signer Consent Requests of the Signature Request
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_signer_consent_requests_with_http_info(signature_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSignatureRequestsSignatureRequestIdSignerConsentRequests200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->get_signature_requests_signature_request_id_signer_consent_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |

### Return type

[**GetSignatureRequestsSignatureRequestIdSignerConsentRequests200Response**](GetSignatureRequestsSignatureRequestIdSignerConsentRequests200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_signature_requests_signature_request_id_consent_requests_consent_request_id

> <SignerConsentRequest> patch_signature_requests_signature_request_id_consent_requests_consent_request_id(signature_request_id, consent_request_id, opts)

Update a Signer Consent Request

Updates a given Signer Consent Request. Any parameters not provided are left unchanged. This action is only permitted when the Signature Request is a draft. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerConsentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
consent_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Consent Request Id
opts = {
  update_signer_consent_request: YousignClientV3::UpdateSignerConsentRequest.new # UpdateSignerConsentRequest | 
}

begin
  # Update a Signer Consent Request
  result = api_instance.patch_signature_requests_signature_request_id_consent_requests_consent_request_id(signature_request_id, consent_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->patch_signature_requests_signature_request_id_consent_requests_consent_request_id: #{e}"
end
```

#### Using the patch_signature_requests_signature_request_id_consent_requests_consent_request_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignerConsentRequest>, Integer, Hash)> patch_signature_requests_signature_request_id_consent_requests_consent_request_id_with_http_info(signature_request_id, consent_request_id, opts)

```ruby
begin
  # Update a Signer Consent Request
  data, status_code, headers = api_instance.patch_signature_requests_signature_request_id_consent_requests_consent_request_id_with_http_info(signature_request_id, consent_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignerConsentRequest>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->patch_signature_requests_signature_request_id_consent_requests_consent_request_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **consent_request_id** | **String** | Signer Consent Request Id |  |
| **update_signer_consent_request** | [**UpdateSignerConsentRequest**](UpdateSignerConsentRequest.md) |  | [optional] |

### Return type

[**SignerConsentRequest**](SignerConsentRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_signature_requests_signature_request_id_consent_requests

> <SignerConsentRequest> post_signature_requests_signature_request_id_consent_requests(signature_request_id, opts)

Add Signer Consent Request to a Signature Request

Adds a Signer Consent Request to a given Signature Request. This action is only permitted when the Signature Request is a draft.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerConsentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  create_signer_consent_request: YousignClientV3::CreateSignerConsentRequest.new({type: 'checkbox', settings: YousignClientV3::CreateSignerConsentRequestSettings.new({text: 'I agree with...'}), optional: false, signer_ids: ["71517741-a4a8-4f25-8496-6e9c6d2b7791", "0c42e1ae-1cac-457b-9a09-5fda5f735bd8"]}) # CreateSignerConsentRequest | 
}

begin
  # Add Signer Consent Request to a Signature Request
  result = api_instance.post_signature_requests_signature_request_id_consent_requests(signature_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->post_signature_requests_signature_request_id_consent_requests: #{e}"
end
```

#### Using the post_signature_requests_signature_request_id_consent_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignerConsentRequest>, Integer, Hash)> post_signature_requests_signature_request_id_consent_requests_with_http_info(signature_request_id, opts)

```ruby
begin
  # Add Signer Consent Request to a Signature Request
  data, status_code, headers = api_instance.post_signature_requests_signature_request_id_consent_requests_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignerConsentRequest>
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->post_signature_requests_signature_request_id_consent_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **create_signer_consent_request** | [**CreateSignerConsentRequest**](CreateSignerConsentRequest.md) |  | [optional] |

### Return type

[**SignerConsentRequest**](SignerConsentRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id

> put_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id(signature_request_id, consent_request_id, signer_id)

Adds a Signer to a given Signer Consent Request

Adds a Signer to a given Signer Consent Request. This action is only permitted when the Signature Request is a draft.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::SignerConsentRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
consent_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Consent Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # Adds a Signer to a given Signer Consent Request
  api_instance.put_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id(signature_request_id, consent_request_id, signer_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->put_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id: #{e}"
end
```

#### Using the put_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> put_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id_with_http_info(signature_request_id, consent_request_id, signer_id)

```ruby
begin
  # Adds a Signer to a given Signer Consent Request
  data, status_code, headers = api_instance.put_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id_with_http_info(signature_request_id, consent_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling SignerConsentRequestApi->put_signature_requests_signature_request_id_consent_requests_consent_request_id_signers_signer_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **consent_request_id** | **String** | Signer Consent Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

