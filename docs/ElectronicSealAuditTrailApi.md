# YousignClientV3::ElectronicSealAuditTrailApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_electronic_seal_audit_trail**](ElectronicSealAuditTrailApi.md#download_electronic_seal_audit_trail) | **GET** /electronic_seals/{electronicSealId}/audit_trails/download | Download an Electronic Seal Audit Trail |
| [**get_electronic_seal_audit_trail**](ElectronicSealAuditTrailApi.md#get_electronic_seal_audit_trail) | **GET** /electronic_seals/{electronicSealId}/audit_trails | Get an Electronic Seal Audit Trail |


## download_electronic_seal_audit_trail

> File download_electronic_seal_audit_trail(electronic_seal_id)

Download an Electronic Seal Audit Trail

Electronic Seal Audit Trail is only available when the Electronic Seal is \"done\".

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ElectronicSealAuditTrailApi.new
electronic_seal_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Electronic Seal Id

begin
  # Download an Electronic Seal Audit Trail
  result = api_instance.download_electronic_seal_audit_trail(electronic_seal_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealAuditTrailApi->download_electronic_seal_audit_trail: #{e}"
end
```

#### Using the download_electronic_seal_audit_trail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_electronic_seal_audit_trail_with_http_info(electronic_seal_id)

```ruby
begin
  # Download an Electronic Seal Audit Trail
  data, status_code, headers = api_instance.download_electronic_seal_audit_trail_with_http_info(electronic_seal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealAuditTrailApi->download_electronic_seal_audit_trail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **electronic_seal_id** | **String** | Electronic Seal Id |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## get_electronic_seal_audit_trail

> <ElectronicSealAuditTrail> get_electronic_seal_audit_trail(electronic_seal_id)

Get an Electronic Seal Audit Trail

Electronic Seal Audit Trail is only available when the Electronic Seal is \"done\".

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ElectronicSealAuditTrailApi.new
electronic_seal_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Electronic Seal Id

begin
  # Get an Electronic Seal Audit Trail
  result = api_instance.get_electronic_seal_audit_trail(electronic_seal_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealAuditTrailApi->get_electronic_seal_audit_trail: #{e}"
end
```

#### Using the get_electronic_seal_audit_trail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ElectronicSealAuditTrail>, Integer, Hash)> get_electronic_seal_audit_trail_with_http_info(electronic_seal_id)

```ruby
begin
  # Get an Electronic Seal Audit Trail
  data, status_code, headers = api_instance.get_electronic_seal_audit_trail_with_http_info(electronic_seal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ElectronicSealAuditTrail>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ElectronicSealAuditTrailApi->get_electronic_seal_audit_trail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **electronic_seal_id** | **String** | Electronic Seal Id |  |

### Return type

[**ElectronicSealAuditTrail**](ElectronicSealAuditTrail.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

