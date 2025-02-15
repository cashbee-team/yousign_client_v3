=begin
#Public Api v3

#Build the best experience of digital signature through your own platform. Increase your conversion rates, leverage your data and reduce your costs with Yousign API.

The version of the OpenAPI document: 3.0
Contact: contact@yousign.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

require 'cgi'

module YousignClientV3
  class WebhookApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a Webhook subscription
    # Deletes a given Webhook subscription.
    # @param webhook_id [String] Webhook Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhooks_webhook_id(webhook_id, opts = {})
      delete_webhooks_webhook_id_with_http_info(webhook_id, opts)
      nil
    end

    # Delete a Webhook subscription
    # Deletes a given Webhook subscription.
    # @param webhook_id [String] Webhook Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_webhooks_webhook_id_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.delete_webhooks_webhook_id ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookApi.delete_webhooks_webhook_id"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhookApi.delete_webhooks_webhook_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#delete_webhooks_webhook_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Webhook subscriptions
    # Returns the list of all Webhook subscriptions in your Organization.
    # @param [Hash] opts the optional parameters
    # @return [Array<WebhookSubscription>]
    def get_webhooks(opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(opts)
      data
    end

    # List Webhook subscriptions
    # Returns the list of all Webhook subscriptions in your Organization.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<WebhookSubscription>, Integer, Hash)>] Array<WebhookSubscription> data, response status code and response headers
    def get_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.get_webhooks ...'
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<WebhookSubscription>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhookApi.get_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Webhook subscription
    # Retrieves a given Webhook subscription.
    # @param webhook_id [String] Webhook Id
    # @param [Hash] opts the optional parameters
    # @return [WebhookSubscription]
    def get_webhooks_webhook_id(webhook_id, opts = {})
      data, _status_code, _headers = get_webhooks_webhook_id_with_http_info(webhook_id, opts)
      data
    end

    # Get a Webhook subscription
    # Retrieves a given Webhook subscription.
    # @param webhook_id [String] Webhook Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookSubscription, Integer, Hash)>] WebhookSubscription data, response status code and response headers
    def get_webhooks_webhook_id_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.get_webhooks_webhook_id ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookApi.get_webhooks_webhook_id"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookSubscription'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhookApi.get_webhooks_webhook_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#get_webhooks_webhook_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Webhook subscription
    # Updates a given Webhook subscription. Any parameters not provided are left unchanged. 
    # @param webhook_id [String] Webhook Id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhookSubscription] :update_webhook_subscription 
    # @return [WebhookSubscription]
    def patch_webhooks_webhook_id(webhook_id, opts = {})
      data, _status_code, _headers = patch_webhooks_webhook_id_with_http_info(webhook_id, opts)
      data
    end

    # Update a Webhook subscription
    # Updates a given Webhook subscription. Any parameters not provided are left unchanged. 
    # @param webhook_id [String] Webhook Id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhookSubscription] :update_webhook_subscription 
    # @return [Array<(WebhookSubscription, Integer, Hash)>] WebhookSubscription data, response status code and response headers
    def patch_webhooks_webhook_id_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.patch_webhooks_webhook_id ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookApi.patch_webhooks_webhook_id"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_webhook_subscription'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookSubscription'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhookApi.patch_webhooks_webhook_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#patch_webhooks_webhook_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Webhook subscription
    # Creates a new Webhook subscription in your organization.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhookSubscription] :create_webhook_subscription 
    # @return [WebhookSubscription]
    def post_webhooks_subscriptions(opts = {})
      data, _status_code, _headers = post_webhooks_subscriptions_with_http_info(opts)
      data
    end

    # Create a Webhook subscription
    # Creates a new Webhook subscription in your organization.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhookSubscription] :create_webhook_subscription 
    # @return [Array<(WebhookSubscription, Integer, Hash)>] WebhookSubscription data, response status code and response headers
    def post_webhooks_subscriptions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.post_webhooks_subscriptions ...'
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_webhook_subscription'])

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookSubscription'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhookApi.post_webhooks_subscriptions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#post_webhooks_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
