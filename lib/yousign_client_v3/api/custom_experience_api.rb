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
  class CustomExperienceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a Custom Experience
    # Deletes a given Custom Experience.
    # @param custom_experience_id [String] Custom Experience Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_custom_experience(custom_experience_id, opts = {})
      delete_custom_experience_with_http_info(custom_experience_id, opts)
      nil
    end

    # Delete a Custom Experience
    # Deletes a given Custom Experience.
    # @param custom_experience_id [String] Custom Experience Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_custom_experience_with_http_info(custom_experience_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.delete_custom_experience ...'
      end
      # verify the required parameter 'custom_experience_id' is set
      if @api_client.config.client_side_validation && custom_experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_experience_id' when calling CustomExperienceApi.delete_custom_experience"
      end
      # resource path
      local_var_path = '/custom_experiences/{customExperienceId}'.sub('{' + 'customExperienceId' + '}', CGI.escape(custom_experience_id.to_s))

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
        :operation => :"CustomExperienceApi.delete_custom_experience",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#delete_custom_experience\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Custom Experience logo
    # Deletes the logo of a Custom Experience.
    # @param custom_experience_id [String] Custom Experience Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_custom_experience_logo(custom_experience_id, opts = {})
      delete_custom_experience_logo_with_http_info(custom_experience_id, opts)
      nil
    end

    # Delete a Custom Experience logo
    # Deletes the logo of a Custom Experience.
    # @param custom_experience_id [String] Custom Experience Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_custom_experience_logo_with_http_info(custom_experience_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.delete_custom_experience_logo ...'
      end
      # verify the required parameter 'custom_experience_id' is set
      if @api_client.config.client_side_validation && custom_experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_experience_id' when calling CustomExperienceApi.delete_custom_experience_logo"
      end
      # resource path
      local_var_path = '/custom_experiences/{customExperienceId}/logo'.sub('{' + 'customExperienceId' + '}', CGI.escape(custom_experience_id.to_s))

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
        :operation => :"CustomExperienceApi.delete_custom_experience_logo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#delete_custom_experience_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Custom Experiences
    # Returns the list of all Custom Experiences in your Organization. You can limit the number of items returned by using pagination. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @option opts [Integer] :limit The limit of items count to retrieve. (default to 100)
    # @return [GetCustomExperiences200Response]
    def get_custom_experiences(opts = {})
      data, _status_code, _headers = get_custom_experiences_with_http_info(opts)
      data
    end

    # List Custom Experiences
    # Returns the list of all Custom Experiences in your Organization. You can limit the number of items returned by using pagination. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @option opts [Integer] :limit The limit of items count to retrieve. (default to 100)
    # @return [Array<(GetCustomExperiences200Response, Integer, Hash)>] GetCustomExperiences200Response data, response status code and response headers
    def get_custom_experiences_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.get_custom_experiences ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomExperienceApi.get_custom_experiences, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomExperienceApi.get_custom_experiences, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/custom_experiences'

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
      return_type = opts[:debug_return_type] || 'GetCustomExperiences200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CustomExperienceApi.get_custom_experiences",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#get_custom_experiences\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Custom Experience
    # Retrieves a given Custom Experience.
    # @param custom_experience_id [String] Custom Experience Id
    # @param [Hash] opts the optional parameters
    # @return [CustomExperience]
    def get_custom_experiences_custom_experience_id(custom_experience_id, opts = {})
      data, _status_code, _headers = get_custom_experiences_custom_experience_id_with_http_info(custom_experience_id, opts)
      data
    end

    # Get a Custom Experience
    # Retrieves a given Custom Experience.
    # @param custom_experience_id [String] Custom Experience Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomExperience, Integer, Hash)>] CustomExperience data, response status code and response headers
    def get_custom_experiences_custom_experience_id_with_http_info(custom_experience_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.get_custom_experiences_custom_experience_id ...'
      end
      # verify the required parameter 'custom_experience_id' is set
      if @api_client.config.client_side_validation && custom_experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_experience_id' when calling CustomExperienceApi.get_custom_experiences_custom_experience_id"
      end
      # resource path
      local_var_path = '/custom_experiences/{customExperienceId}'.sub('{' + 'customExperienceId' + '}', CGI.escape(custom_experience_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CustomExperience'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CustomExperienceApi.get_custom_experiences_custom_experience_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#get_custom_experiences_custom_experience_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Custom Experience logo
    # Updates the logo of a given Custom Experience by uploading the image of your choice.
    # @param custom_experience_id [String] Custom Experience Id
    # @param file [File] 
    # @param [Hash] opts the optional parameters
    # @return [CustomExperience]
    def patch_custom_experience_logo(custom_experience_id, file, opts = {})
      data, _status_code, _headers = patch_custom_experience_logo_with_http_info(custom_experience_id, file, opts)
      data
    end

    # Update a Custom Experience logo
    # Updates the logo of a given Custom Experience by uploading the image of your choice.
    # @param custom_experience_id [String] Custom Experience Id
    # @param file [File] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomExperience, Integer, Hash)>] CustomExperience data, response status code and response headers
    def patch_custom_experience_logo_with_http_info(custom_experience_id, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.patch_custom_experience_logo ...'
      end
      # verify the required parameter 'custom_experience_id' is set
      if @api_client.config.client_side_validation && custom_experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_experience_id' when calling CustomExperienceApi.patch_custom_experience_logo"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling CustomExperienceApi.patch_custom_experience_logo"
      end
      # resource path
      local_var_path = '/custom_experiences/{customExperienceId}/logo'.sub('{' + 'customExperienceId' + '}', CGI.escape(custom_experience_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CustomExperience'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CustomExperienceApi.patch_custom_experience_logo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#patch_custom_experience_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Custom Experience
    # Updates a given Custom Experience. Any parameters not provided are left unchanged. 
    # @param custom_experience_id [String] Custom Experience Id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateCustomExperience] :update_custom_experience 
    # @return [CustomExperience]
    def patch_custom_experiences_custom_experience_id(custom_experience_id, opts = {})
      data, _status_code, _headers = patch_custom_experiences_custom_experience_id_with_http_info(custom_experience_id, opts)
      data
    end

    # Update a Custom Experience
    # Updates a given Custom Experience. Any parameters not provided are left unchanged. 
    # @param custom_experience_id [String] Custom Experience Id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateCustomExperience] :update_custom_experience 
    # @return [Array<(CustomExperience, Integer, Hash)>] CustomExperience data, response status code and response headers
    def patch_custom_experiences_custom_experience_id_with_http_info(custom_experience_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.patch_custom_experiences_custom_experience_id ...'
      end
      # verify the required parameter 'custom_experience_id' is set
      if @api_client.config.client_side_validation && custom_experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_experience_id' when calling CustomExperienceApi.patch_custom_experiences_custom_experience_id"
      end
      # resource path
      local_var_path = '/custom_experiences/{customExperienceId}'.sub('{' + 'customExperienceId' + '}', CGI.escape(custom_experience_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_custom_experience'])

      # return_type
      return_type = opts[:debug_return_type] || 'CustomExperience'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CustomExperienceApi.patch_custom_experiences_custom_experience_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#patch_custom_experiences_custom_experience_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Custom Experience
    # Creates a new Custom Experience.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCustomExperience] :create_custom_experience 
    # @return [CustomExperience]
    def post_custom_experience(opts = {})
      data, _status_code, _headers = post_custom_experience_with_http_info(opts)
      data
    end

    # Create a Custom Experience
    # Creates a new Custom Experience.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCustomExperience] :create_custom_experience 
    # @return [Array<(CustomExperience, Integer, Hash)>] CustomExperience data, response status code and response headers
    def post_custom_experience_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.post_custom_experience ...'
      end
      # resource path
      local_var_path = '/custom_experiences'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_custom_experience'])

      # return_type
      return_type = opts[:debug_return_type] || 'CustomExperience'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CustomExperienceApi.post_custom_experience",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#post_custom_experience\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
