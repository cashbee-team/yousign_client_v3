# YousignClientV3::ConsumptionApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_consumption_addon**](ConsumptionApi.md#get_consumption_addon) | **GET** /consumptions/addons | Get detailed addon consumption. |
| [**get_consumption_detail**](ConsumptionApi.md#get_consumption_detail) | **GET** /consumptions/detail | Get detailed Consumption data |
| [**get_consumptions**](ConsumptionApi.md#get_consumptions) | **GET** /consumptions | Get Consumptions |
| [**get_consumptions_export**](ConsumptionApi.md#get_consumptions_export) | **GET** /consumptions/export | Export Consumption data |


## get_consumption_addon

> <GetConsumptionAddon200Response> get_consumption_addon(opts)

Get detailed addon consumption.

Retrieves detailed addon consumption for the current subscription period.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ConsumptionApi.new
opts = {
  addons: ['electronic_signature'] # Array<String> | A list of add-ons to filter the results on.
}

begin
  # Get detailed addon consumption.
  result = api_instance.get_consumption_addon(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ConsumptionApi->get_consumption_addon: #{e}"
end
```

#### Using the get_consumption_addon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConsumptionAddon200Response>, Integer, Hash)> get_consumption_addon_with_http_info(opts)

```ruby
begin
  # Get detailed addon consumption.
  data, status_code, headers = api_instance.get_consumption_addon_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConsumptionAddon200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ConsumptionApi->get_consumption_addon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addons** | [**Array&lt;String&gt;**](String.md) | A list of add-ons to filter the results on. | [optional] |

### Return type

[**GetConsumptionAddon200Response**](GetConsumptionAddon200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_consumption_detail

> <GetConsumptionDetail200Response> get_consumption_detail(from, to, opts)

Get detailed Consumption data

Returns the consumption of your organization over a specified period.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ConsumptionApi.new
from = Date.parse('2013-10-20') # Date | The starting date for data retrieval.
to = Date.parse('2013-10-20') # Date | The end date for data retrieval. The `to` date must be later than the `from` date and within one year of the `from` date.
opts = {
  after: 'after_example', # String | After cursor (pagination)
  limit: 56, # Integer | The limit of items count to retrieve.
  breakdown_type: 'organization', # String | Specifies how data is grouped. By default, it returns the total consumption for the entire organization. If set to `workspace`, the data will be grouped by Workspace.
  workspace_ids: ['9a93d3b5-fb3b-4abf-9e70-26315b33506c'] # Array<String> | A list of Workspace IDs to filter the results.
}

begin
  # Get detailed Consumption data
  result = api_instance.get_consumption_detail(from, to, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ConsumptionApi->get_consumption_detail: #{e}"
end
```

#### Using the get_consumption_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConsumptionDetail200Response>, Integer, Hash)> get_consumption_detail_with_http_info(from, to, opts)

```ruby
begin
  # Get detailed Consumption data
  data, status_code, headers = api_instance.get_consumption_detail_with_http_info(from, to, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConsumptionDetail200Response>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ConsumptionApi->get_consumption_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Date** | The starting date for data retrieval. |  |
| **to** | **Date** | The end date for data retrieval. The &#x60;to&#x60; date must be later than the &#x60;from&#x60; date and within one year of the &#x60;from&#x60; date. |  |
| **after** | **String** | After cursor (pagination) | [optional] |
| **limit** | **Integer** | The limit of items count to retrieve. | [optional][default to 100] |
| **breakdown_type** | **String** | Specifies how data is grouped. By default, it returns the total consumption for the entire organization. If set to &#x60;workspace&#x60;, the data will be grouped by Workspace. | [optional][default to &#39;organization&#39;] |
| **workspace_ids** | [**Array&lt;String&gt;**](String.md) | A list of Workspace IDs to filter the results. | [optional] |

### Return type

[**GetConsumptionDetail200Response**](GetConsumptionDetail200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_consumptions

> <Consumption> get_consumptions(from, to, opts)

Get Consumptions

Get signatures Consumption by source

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ConsumptionApi.new
from = Date.parse('2013-10-20') # Date | The \"from\" date must not be more than 1 year in the past
to = Date.parse('2013-10-20') # Date | The \"to\" date must be more recent than the \"from\" date
opts = {
  authentication_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The API authentication key to use to retrieve the data
}

begin
  # Get Consumptions
  result = api_instance.get_consumptions(from, to, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ConsumptionApi->get_consumptions: #{e}"
end
```

#### Using the get_consumptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Consumption>, Integer, Hash)> get_consumptions_with_http_info(from, to, opts)

```ruby
begin
  # Get Consumptions
  data, status_code, headers = api_instance.get_consumptions_with_http_info(from, to, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Consumption>
rescue YousignClientV3::ApiError => e
  puts "Error when calling ConsumptionApi->get_consumptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Date** | The \&quot;from\&quot; date must not be more than 1 year in the past |  |
| **to** | **Date** | The \&quot;to\&quot; date must be more recent than the \&quot;from\&quot; date |  |
| **authentication_key** | **String** | The API authentication key to use to retrieve the data | [optional] |

### Return type

[**Consumption**](Consumption.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_consumptions_export

> String get_consumptions_export(from, to, opts)

Export Consumption data

Get a binary .csv file containing all the Consumption data of the underlying signatures

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::ConsumptionApi.new
from = Date.parse('2013-10-20') # Date | The \"from\" date must not be more than 1 year in the past
to = Date.parse('2013-10-20') # Date | The \"to\" date must be more recent than the \"from\" date
opts = {
  authentication_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The API authentication key to use to retrieve the data
}

begin
  # Export Consumption data
  result = api_instance.get_consumptions_export(from, to, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling ConsumptionApi->get_consumptions_export: #{e}"
end
```

#### Using the get_consumptions_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_consumptions_export_with_http_info(from, to, opts)

```ruby
begin
  # Export Consumption data
  data, status_code, headers = api_instance.get_consumptions_export_with_http_info(from, to, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue YousignClientV3::ApiError => e
  puts "Error when calling ConsumptionApi->get_consumptions_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Date** | The \&quot;from\&quot; date must not be more than 1 year in the past |  |
| **to** | **Date** | The \&quot;to\&quot; date must be more recent than the \&quot;from\&quot; date |  |
| **authentication_key** | **String** | The API authentication key to use to retrieve the data | [optional] |

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv, application/json

