# YousignClientV3::ArchiveApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_archives_archived_file_id_download**](ArchiveApi.md#get_archives_archived_file_id_download) | **GET** /archives/{archivedFileId}/download | Download archived file |
| [**post_archives**](ArchiveApi.md#post_archives) | **POST** /archives | Direct upload an archived file |


## get_archives_archived_file_id_download

> File get_archives_archived_file_id_download(archived_file_id)

Download archived file

Download the archived file using the ArchivedFileId.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ArchiveApi.new
archived_file_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ArchivedFileId

begin
  # Download archived file
  result = api_instance.get_archives_archived_file_id_download(archived_file_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ArchiveApi->get_archives_archived_file_id_download: #{e}"
end
```

#### Using the get_archives_archived_file_id_download_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_archives_archived_file_id_download_with_http_info(archived_file_id)

```ruby
begin
  # Download archived file
  data, status_code, headers = api_instance.get_archives_archived_file_id_download_with_http_info(archived_file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue YousignClientV3::ApiError => e
  puts "Error when calling ArchiveApi->get_archives_archived_file_id_download_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **archived_file_id** | **String** | ArchivedFileId |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## post_archives

> <ArchivedFile> post_archives(file, opts)

Direct upload an archived file

Archive a file in a secure digital safe for 10 years

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ArchiveApi.new
file = File.new('/path/to/some/file') # File | File to be uploaded
opts = {
  workspace_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | 
  archive_y: 'archive_y_example', # String | 
  tags: ['inner_example'], # Array<String> | Tags for the file
  expired_at: 'expired_at_example' # String | Expiration date of the file
}

begin
  # Direct upload an archived file
  result = api_instance.post_archives(file, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ArchiveApi->post_archives: #{e}"
end
```

#### Using the post_archives_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArchivedFile>, Integer, Hash)> post_archives_with_http_info(file, opts)

```ruby
begin
  # Direct upload an archived file
  data, status_code, headers = api_instance.post_archives_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArchivedFile>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ArchiveApi->post_archives_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | File to be uploaded |  |
| **workspace_id** | **String** |  | [optional] |
| **archive_y** | **String** |  | [optional] |
| **tags** | [**Array&lt;String&gt;**](String.md) | Tags for the file | [optional] |
| **expired_at** | **String** | Expiration date of the file | [optional] |

### Return type

[**ArchivedFile**](ArchivedFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

