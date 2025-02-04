# YousignClientV3::WebhookApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_webhooks_webhook_id**](WebhookApi.md#delete_webhooks_webhook_id) | **DELETE** /webhooks/{webhookId} | Delete a Webhook subscription |
| [**get_webhooks**](WebhookApi.md#get_webhooks) | **GET** /webhooks | List Webhook subscriptions |
| [**get_webhooks_webhook_id**](WebhookApi.md#get_webhooks_webhook_id) | **GET** /webhooks/{webhookId} | Get a Webhook subscription |
| [**patch_webhooks_webhook_id**](WebhookApi.md#patch_webhooks_webhook_id) | **PATCH** /webhooks/{webhookId} | Update a Webhook subscription |
| [**post_webhooks_subscriptions**](WebhookApi.md#post_webhooks_subscriptions) | **POST** /webhooks | Create a Webhook subscription |


## delete_webhooks_webhook_id

> delete_webhooks_webhook_id(webhook_id)

Delete a Webhook subscription

Deletes a given Webhook subscription.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WebhookApi.new
webhook_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook Id

begin
  # Delete a Webhook subscription
  api_instance.delete_webhooks_webhook_id(webhook_id)
rescue YousignClientV3::ApiError => e
  puts "Error when calling WebhookApi->delete_webhooks_webhook_id: #{e}"
end
```

#### Using the delete_webhooks_webhook_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhooks_webhook_id_with_http_info(webhook_id)

```ruby
begin
  # Delete a Webhook subscription
  data, status_code, headers = api_instance.delete_webhooks_webhook_id_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue YousignClientV3::ApiError => e
  puts "Error when calling WebhookApi->delete_webhooks_webhook_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook Id |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks

> <Array<WebhookSubscription>> get_webhooks

List Webhook subscriptions

Returns the list of all Webhook subscriptions in your Organization.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WebhookApi.new

begin
  # List Webhook subscriptions
  result = api_instance.get_webhooks
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling WebhookApi->get_webhooks: #{e}"
end
```

#### Using the get_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WebhookSubscription>>, Integer, Hash)> get_webhooks_with_http_info

```ruby
begin
  # List Webhook subscriptions
  data, status_code, headers = api_instance.get_webhooks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WebhookSubscription>>
rescue YousignClientV3::ApiError => e
  puts "Error when calling WebhookApi->get_webhooks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;WebhookSubscription&gt;**](WebhookSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks_webhook_id

> <WebhookSubscription> get_webhooks_webhook_id(webhook_id)

Get a Webhook subscription

Retrieves a given Webhook subscription.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WebhookApi.new
webhook_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook Id

begin
  # Get a Webhook subscription
  result = api_instance.get_webhooks_webhook_id(webhook_id)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling WebhookApi->get_webhooks_webhook_id: #{e}"
end
```

#### Using the get_webhooks_webhook_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> get_webhooks_webhook_id_with_http_info(webhook_id)

```ruby
begin
  # Get a Webhook subscription
  data, status_code, headers = api_instance.get_webhooks_webhook_id_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue YousignClientV3::ApiError => e
  puts "Error when calling WebhookApi->get_webhooks_webhook_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook Id |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_webhooks_webhook_id

> <WebhookSubscription> patch_webhooks_webhook_id(webhook_id, opts)

Update a Webhook subscription

Updates a given Webhook subscription. Any parameters not provided are left unchanged. 

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WebhookApi.new
webhook_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook Id
opts = {
  update_webhook_subscription: YousignClientV3::UpdateWebhookSubscription.new # UpdateWebhookSubscription | 
}

begin
  # Update a Webhook subscription
  result = api_instance.patch_webhooks_webhook_id(webhook_id, opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling WebhookApi->patch_webhooks_webhook_id: #{e}"
end
```

#### Using the patch_webhooks_webhook_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> patch_webhooks_webhook_id_with_http_info(webhook_id, opts)

```ruby
begin
  # Update a Webhook subscription
  data, status_code, headers = api_instance.patch_webhooks_webhook_id_with_http_info(webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue YousignClientV3::ApiError => e
  puts "Error when calling WebhookApi->patch_webhooks_webhook_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook Id |  |
| **update_webhook_subscription** | [**UpdateWebhookSubscription**](UpdateWebhookSubscription.md) |  | [optional] |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_webhooks_subscriptions

> <WebhookSubscription> post_webhooks_subscriptions(opts)

Create a Webhook subscription

Creates a new Webhook subscription in your organization.

### Examples

```ruby
require 'time'
require 'yousign_client_v3'
# setup authorization
YousignClientV3.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = YousignClientV3::WebhookApi.new
opts = {
  create_webhook_subscription: YousignClientV3::CreateWebhookSubscription.new({endpoint: 'https://example.com/my-endpoint', description: 'Lorem Ipsum', sandbox: true, subscribed_events: nil, scopes: nil, auto_retry: false, enabled: false}) # CreateWebhookSubscription | 
}

begin
  # Create a Webhook subscription
  result = api_instance.post_webhooks_subscriptions(opts)
  p result
rescue YousignClientV3::ApiError => e
  puts "Error when calling WebhookApi->post_webhooks_subscriptions: #{e}"
end
```

#### Using the post_webhooks_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> post_webhooks_subscriptions_with_http_info(opts)

```ruby
begin
  # Create a Webhook subscription
  data, status_code, headers = api_instance.post_webhooks_subscriptions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue YousignClientV3::ApiError => e
  puts "Error when calling WebhookApi->post_webhooks_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhook_subscription** | [**CreateWebhookSubscription**](CreateWebhookSubscription.md) |  | [optional] |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

