# YousignClientV3::AuditTrailApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_signature_requests_signature_request_id_audit_trails_download**](AuditTrailApi.md#get_signature_requests_signature_request_id_audit_trails_download) | **GET** /signature_requests/{signatureRequestId}/audit_trails/download | Download Signature Request Audit Trails |
| [**get_signature_requests_signature_request_id_signers_signer_id_audit_trails**](AuditTrailApi.md#get_signature_requests_signature_request_id_signers_signer_id_audit_trails) | **GET** /signature_requests/{signatureRequestId}/signers/{signerId}/audit_trails | Get Signer Audit Trail |
| [**get_signers_signer_id_audit_trails_download**](AuditTrailApi.md#get_signers_signer_id_audit_trails_download) | **GET** /signature_requests/{signatureRequestId}/signers/{signerId}/audit_trails/download | Download Audit Trail PDF |


## get_signature_requests_signature_request_id_audit_trails_download

> File get_signature_requests_signature_request_id_audit_trails_download(signature_request_id, opts)

Download Signature Request Audit Trails

Download the PDF version of all the Audit Trails attached to a given Signature Request. Each Audit Trail is bound to a different Signer. Only possible when the Signature Request status is `done`.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::AuditTrailApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = {
  merge: true # Boolean | Download all Audit Trails merged as a single PDF file
}

begin
  # Download Signature Request Audit Trails
  result = api_instance.get_signature_requests_signature_request_id_audit_trails_download(signature_request_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling AuditTrailApi->get_signature_requests_signature_request_id_audit_trails_download: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_audit_trails_download_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_signature_requests_signature_request_id_audit_trails_download_with_http_info(signature_request_id, opts)

```ruby
begin
  # Download Signature Request Audit Trails
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_audit_trails_download_with_http_info(signature_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue YousignClientV3::ApiError => e
  puts "Error when calling AuditTrailApi->get_signature_requests_signature_request_id_audit_trails_download_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **merge** | **Boolean** | Download all Audit Trails merged as a single PDF file | [optional][default to false] |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/zip, application/pdf, application/json


## get_signature_requests_signature_request_id_signers_signer_id_audit_trails

> <SignerAuditTrail> get_signature_requests_signature_request_id_signers_signer_id_audit_trails(signature_request_id, signer_id)

Get Signer Audit Trail

Retrieves the JSON version of the Audit Trail attached to a given Signer. Only possible when Signer status is `signed`.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::AuditTrailApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # Get Signer Audit Trail
  result = api_instance.get_signature_requests_signature_request_id_signers_signer_id_audit_trails(signature_request_id, signer_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling AuditTrailApi->get_signature_requests_signature_request_id_signers_signer_id_audit_trails: #{e}"
end
```

#### Using the get_signature_requests_signature_request_id_signers_signer_id_audit_trails_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignerAuditTrail>, Integer, Hash)> get_signature_requests_signature_request_id_signers_signer_id_audit_trails_with_http_info(signature_request_id, signer_id)

```ruby
begin
  # Get Signer Audit Trail
  data, status_code, headers = api_instance.get_signature_requests_signature_request_id_signers_signer_id_audit_trails_with_http_info(signature_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignerAuditTrail>
rescue YousignClientV3::ApiError => e
  puts "Error when calling AuditTrailApi->get_signature_requests_signature_request_id_signers_signer_id_audit_trails_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

[**SignerAuditTrail**](SignerAuditTrail.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_signers_signer_id_audit_trails_download

> File get_signers_signer_id_audit_trails_download(signature_request_id, signer_id)

Download Audit Trail PDF

Download the PDF version of the Audit Trail attached to a given Signer. Only possible when Signer status is `signed`.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::AuditTrailApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id

begin
  # Download Audit Trail PDF
  result = api_instance.get_signers_signer_id_audit_trails_download(signature_request_id, signer_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling AuditTrailApi->get_signers_signer_id_audit_trails_download: #{e}"
end
```

#### Using the get_signers_signer_id_audit_trails_download_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_signers_signer_id_audit_trails_download_with_http_info(signature_request_id, signer_id)

```ruby
begin
  # Download Audit Trail PDF
  data, status_code, headers = api_instance.get_signers_signer_id_audit_trails_download_with_http_info(signature_request_id, signer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue YousignClientV3::ApiError => e
  puts "Error when calling AuditTrailApi->get_signers_signer_id_audit_trails_download_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_request_id** | **String** | Signature Request Id |  |
| **signer_id** | **String** | Signer Id |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json

