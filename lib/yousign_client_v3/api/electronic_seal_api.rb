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
  class ElectronicSealApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get an Electronic Seal
    # Retrieves a given Electronic Seal.
    # @param electronic_seal_id [String] Electronic Seal Id
    # @param [Hash] opts the optional parameters
    # @return [ElectronicSeal]
    def get_electronic_seal(electronic_seal_id, opts = {})
      data, _status_code, _headers = get_electronic_seal_with_http_info(electronic_seal_id, opts)
      data
    end

    # Get an Electronic Seal
    # Retrieves a given Electronic Seal.
    # @param electronic_seal_id [String] Electronic Seal Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElectronicSeal, Integer, Hash)>] ElectronicSeal data, response status code and response headers
    def get_electronic_seal_with_http_info(electronic_seal_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElectronicSealApi.get_electronic_seal ...'
      end
      # verify the required parameter 'electronic_seal_id' is set
      if @api_client.config.client_side_validation && electronic_seal_id.nil?
        fail ArgumentError, "Missing the required parameter 'electronic_seal_id' when calling ElectronicSealApi.get_electronic_seal"
      end
      # resource path
      local_var_path = '/electronic_seals/{electronicSealId}'.sub('{' + 'electronicSealId' + '}', CGI.escape(electronic_seal_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ElectronicSeal'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ElectronicSealApi.get_electronic_seal",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElectronicSealApi#get_electronic_seal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Electronic Seal Images
    # Lists Electronic Seal Images. The list is paginated and can be filtered by the `after` cursor. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @option opts [Integer] :limit The limit of items count to retrieve. (default to 100)
    # @return [ListElectronicSealImages200Response]
    def list_electronic_seal_images(opts = {})
      data, _status_code, _headers = list_electronic_seal_images_with_http_info(opts)
      data
    end

    # List Electronic Seal Images
    # Lists Electronic Seal Images. The list is paginated and can be filtered by the &#x60;after&#x60; cursor. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @option opts [Integer] :limit The limit of items count to retrieve. (default to 100)
    # @return [Array<(ListElectronicSealImages200Response, Integer, Hash)>] ListElectronicSealImages200Response data, response status code and response headers
    def list_electronic_seal_images_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElectronicSealApi.list_electronic_seal_images ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ElectronicSealApi.list_electronic_seal_images, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ElectronicSealApi.list_electronic_seal_images, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/electronic_seal_images'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListElectronicSealImages200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ElectronicSealApi.list_electronic_seal_images",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElectronicSealApi#list_electronic_seal_images\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an Electronic Seal
    # Create a new Electronic Seal
    # @param [Hash] opts the optional parameters
    # @option opts [CreateElectronicSealPayload] :create_electronic_seal_payload 
    # @return [ElectronicSeal]
    def post_electronic_seals(opts = {})
      data, _status_code, _headers = post_electronic_seals_with_http_info(opts)
      data
    end

    # Create an Electronic Seal
    # Create a new Electronic Seal
    # @param [Hash] opts the optional parameters
    # @option opts [CreateElectronicSealPayload] :create_electronic_seal_payload 
    # @return [Array<(ElectronicSeal, Integer, Hash)>] ElectronicSeal data, response status code and response headers
    def post_electronic_seals_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElectronicSealApi.post_electronic_seals ...'
      end
      # resource path
      local_var_path = '/electronic_seals'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_electronic_seal_payload'])

      # return_type
      return_type = opts[:debug_return_type] || 'ElectronicSeal'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ElectronicSealApi.post_electronic_seals",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElectronicSealApi#post_electronic_seals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
