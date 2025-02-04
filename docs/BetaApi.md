# YousignClientV3::BetaApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_id_document_verification**](BetaApi.md#create_id_document_verification) | **POST** /id_document_verifications | Initiate a new ID document verification |
| [**get_bank_account_verifications**](BetaApi.md#get_bank_account_verifications) | **GET** /bank_account_verifications | List Bank Account Verifications |
| [**get_bank_account_verifications_bank_account_verification_id**](BetaApi.md#get_bank_account_verifications_bank_account_verification_id) | **GET** /bank_account_verifications/{bankAccountVerificationId} | Retrieve a bank account verification |
| [**get_id_document_verification**](BetaApi.md#get_id_document_verification) | **GET** /id_document_verifications/{idDocumentVerificationId} | Retrieve an ID document verification |
| [**get_id_document_verifications**](BetaApi.md#get_id_document_verifications) | **GET** /id_document_verifications | List ID Document Verifications |
| [**get_identity_verifications**](BetaApi.md#get_identity_verifications) | **GET** /video_identity_verifications | List Identity Verifications |
| [**get_identity_verifications_identity_verification_id**](BetaApi.md#get_identity_verifications_identity_verification_id) | **GET** /video_identity_verifications/{identityVerificationId} | Retrieve an identity verification |
| [**post_bank_account_verifications**](BetaApi.md#post_bank_account_verifications) | **POST** /bank_account_verifications | Initiate a new Bank Account Verification |
| [**post_identity_verifications**](BetaApi.md#post_identity_verifications) | **POST** /video_identity_verifications | Initiate a new Identity Verification |


## create_id_document_verification

> <IdDocumentVerificationCreated> create_id_document_verification(first_name, last_name, file, opts)

Initiate a new ID document verification

Verify a person’s ID document by sending the file containing their ID document (ID card, passport, residence permit or driving license).

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::BetaApi.new
first_name = 'first_name_example' # String | Please provide the holder first name, exactly as it appears on the ID document. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don't provide it as part of the name 
last_name = 'last_name_example' # String | Please provide the holder last name, exactly as it appears on the ID document birth name. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don't provide it as part of the name 
file = File.new('/path/to/some/file') # File | Binary file
opts = {
  document_type: 'id_card', # String | The document type to verify
  additional_file: File.new('/path/to/some/file') # File | Binary file
}

begin
  # Initiate a new ID document verification
  result = api_instance.create_id_document_verification(first_name, last_name, file, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->create_id_document_verification: #{e}"
end
```

#### Using the create_id_document_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdDocumentVerificationCreated>, Integer, Hash)> create_id_document_verification_with_http_info(first_name, last_name, file, opts)

```ruby
begin
  # Initiate a new ID document verification
  data, status_code, headers = api_instance.create_id_document_verification_with_http_info(first_name, last_name, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdDocumentVerificationCreated>
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->create_id_document_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | Please provide the holder first name, exactly as it appears on the ID document. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don&#39;t provide it as part of the name  |  |
| **last_name** | **String** | Please provide the holder last name, exactly as it appears on the ID document birth name. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don&#39;t provide it as part of the name  |  |
| **file** | **File** | Binary file |  |
| **document_type** | **String** | The document type to verify | [optional] |
| **additional_file** | **File** | Binary file | [optional] |

### Return type

[**IdDocumentVerificationCreated**](IdDocumentVerificationCreated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## get_bank_account_verifications

> <GetBankAccountVerifications200Response> get_bank_account_verifications(opts)

List Bank Account Verifications

Returns the list of all Bank Account Verifications within your organization.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::BetaApi.new
opts = {
  after: 'after_example', # String | After cursor (pagination)
  limit: 56, # Integer | The limit of items count to retrieve.
  status: 'pending' # String | Filter by status
}

begin
  # List Bank Account Verifications
  result = api_instance.get_bank_account_verifications(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->get_bank_account_verifications: #{e}"
end
```

#### Using the get_bank_account_verifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBankAccountVerifications200Response>, Integer, Hash)> get_bank_account_verifications_with_http_info(opts)

```ruby
begin
  # List Bank Account Verifications
  data, status_code, headers = api_instance.get_bank_account_verifications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBankAccountVerifications200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->get_bank_account_verifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 100] |
| **status** | **String** | Filter by status | [optional] |

### Return type

[**GetBankAccountVerifications200Response**](GetBankAccountVerifications200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_verifications_bank_account_verification_id

> <GetBankAccountVerificationsBankAccountVerificationId200Response> get_bank_account_verifications_bank_account_verification_id(bank_account_verification_id)

Retrieve a bank account verification

Get the detailed results of a bank account verification.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::BetaApi.new
bank_account_verification_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The bank account verification ID

begin
  # Retrieve a bank account verification
  result = api_instance.get_bank_account_verifications_bank_account_verification_id(bank_account_verification_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->get_bank_account_verifications_bank_account_verification_id: #{e}"
end
```

#### Using the get_bank_account_verifications_bank_account_verification_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBankAccountVerificationsBankAccountVerificationId200Response>, Integer, Hash)> get_bank_account_verifications_bank_account_verification_id_with_http_info(bank_account_verification_id)

```ruby
begin
  # Retrieve a bank account verification
  data, status_code, headers = api_instance.get_bank_account_verifications_bank_account_verification_id_with_http_info(bank_account_verification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBankAccountVerificationsBankAccountVerificationId200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->get_bank_account_verifications_bank_account_verification_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_verification_id** | **String** | The bank account verification ID |  |

### Return type

[**GetBankAccountVerificationsBankAccountVerificationId200Response**](GetBankAccountVerificationsBankAccountVerificationId200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_id_document_verification

> <GetIdDocumentVerification200Response> get_id_document_verification(id_document_verification_id)

Retrieve an ID document verification

Get the detailed results of an ID document verification, including the status of the verification, the reasons in case of rejection and the data extracted from the ID document.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::BetaApi.new
id_document_verification_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID document verification ID

begin
  # Retrieve an ID document verification
  result = api_instance.get_id_document_verification(id_document_verification_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->get_id_document_verification: #{e}"
end
```

#### Using the get_id_document_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIdDocumentVerification200Response>, Integer, Hash)> get_id_document_verification_with_http_info(id_document_verification_id)

```ruby
begin
  # Retrieve an ID document verification
  data, status_code, headers = api_instance.get_id_document_verification_with_http_info(id_document_verification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIdDocumentVerification200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->get_id_document_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id_document_verification_id** | **String** | The ID document verification ID |  |

### Return type

[**GetIdDocumentVerification200Response**](GetIdDocumentVerification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_id_document_verifications

> <GetIdDocumentVerifications200Response> get_id_document_verifications(opts)

List ID Document Verifications

Returns the list of all ID Document Verifications within your organization.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::BetaApi.new
opts = {
  after: 'after_example', # String | After cursor (pagination)
  limit: 56, # Integer | The limit of items count to retrieve.
  status: 'pending' # String | Filter by status
}

begin
  # List ID Document Verifications
  result = api_instance.get_id_document_verifications(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->get_id_document_verifications: #{e}"
end
```

#### Using the get_id_document_verifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIdDocumentVerifications200Response>, Integer, Hash)> get_id_document_verifications_with_http_info(opts)

```ruby
begin
  # List ID Document Verifications
  data, status_code, headers = api_instance.get_id_document_verifications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIdDocumentVerifications200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->get_id_document_verifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 100] |
| **status** | **String** | Filter by status | [optional] |

### Return type

[**GetIdDocumentVerifications200Response**](GetIdDocumentVerifications200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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

api_instance = YousignClientV3::BetaApi.new
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
  puts "Error when calling BetaApi->get_identity_verifications: #{e}"
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
  puts "Error when calling BetaApi->get_identity_verifications_with_http_info: #{e}"
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

api_instance = YousignClientV3::BetaApi.new
identity_verification_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The Identity verification ID

begin
  # Retrieve an identity verification
  result = api_instance.get_identity_verifications_identity_verification_id(identity_verification_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->get_identity_verifications_identity_verification_id: #{e}"
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
  puts "Error when calling BetaApi->get_identity_verifications_identity_verification_id_with_http_info: #{e}"
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


## post_bank_account_verifications

> <BankAccountVerificationCreated> post_bank_account_verifications(file, opts)

Initiate a new Bank Account Verification

Creates a new Bank Account Verification resource.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::BetaApi.new
file = File.new('/path/to/some/file') # File | Binary file
opts = {
  first_name: 'first_name_example', # String | Please provide the holder first name, exactly as it appears on the bank account document. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don't provide it as part of the name. Ignored if field \\\"legal_entity_name\\\" is provided.
  last_name: 'last_name_example', # String | Please provide the holder last name, exactly as it appears on the bank account document. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don't provide it as part of the name. Ignored if field \\\"legal_entity_name\\\" is provided.
  iban: 'iban_example', # String | International Bank Account Number (IBAN)
  bic: 'bic_example', # String | Business Identifier Codes (BIC)
  legal_entity_name: 'legal_entity_name_example' # String | Please provide the legal entity name, exactly as it appears on the bank account document. Please match it exactly, with the same characters, same case. If provided, fields \\\"first_name\\\" and \\\"last_name\\\" are ignored.
}

begin
  # Initiate a new Bank Account Verification
  result = api_instance.post_bank_account_verifications(file, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->post_bank_account_verifications: #{e}"
end
```

#### Using the post_bank_account_verifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountVerificationCreated>, Integer, Hash)> post_bank_account_verifications_with_http_info(file, opts)

```ruby
begin
  # Initiate a new Bank Account Verification
  data, status_code, headers = api_instance.post_bank_account_verifications_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountVerificationCreated>
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->post_bank_account_verifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | Binary file |  |
| **first_name** | **String** | Please provide the holder first name, exactly as it appears on the bank account document. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don&#39;t provide it as part of the name. Ignored if field \\\&quot;legal_entity_name\\\&quot; is provided. | [optional] |
| **last_name** | **String** | Please provide the holder last name, exactly as it appears on the bank account document. Please match it exactly, with the same characters, same case. One exception: if the document mentions an honorary title, please don&#39;t provide it as part of the name. Ignored if field \\\&quot;legal_entity_name\\\&quot; is provided. | [optional] |
| **iban** | **String** | International Bank Account Number (IBAN) | [optional] |
| **bic** | **String** | Business Identifier Codes (BIC) | [optional] |
| **legal_entity_name** | **String** | Please provide the legal entity name, exactly as it appears on the bank account document. Please match it exactly, with the same characters, same case. If provided, fields \\\&quot;first_name\\\&quot; and \\\&quot;last_name\\\&quot; are ignored. | [optional] |

### Return type

[**BankAccountVerificationCreated**](BankAccountVerificationCreated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
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

api_instance = YousignClientV3::BetaApi.new
opts = {
  create_video_identity_verification: YousignClientV3::CreateVideoIdentityVerification.new({first_name: 'John', last_name: 'Doe', redirection_url: 'https://www.redirectionurl.com'}) # CreateVideoIdentityVerification | 
}

begin
  # Initiate a new Identity Verification
  result = api_instance.post_identity_verifications(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling BetaApi->post_identity_verifications: #{e}"
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
  puts "Error when calling BetaApi->post_identity_verifications_with_http_info: #{e}"
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

