=begin
#Public Api v3

#Build the best experience of digital signature through your own platform. Increase your conversion rates, leverage your data and reduce your costs with Yousign API.

The version of the OpenAPI document: 3.0
Contact: contact@yousign.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module YousignClientV3
  class UserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a User
    # Deletes a given User and its Invitation, only possible when the User is in `invited` status.
    # @param user_id [String] User Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_users_user_id(user_id, opts = {})
      delete_users_user_id_with_http_info(user_id, opts)
      nil
    end

    # Delete a User
    # Deletes a given User and its Invitation, only possible when the User is in &#x60;invited&#x60; status.
    # @param user_id [String] User Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_users_user_id_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.delete_users_user_id ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.delete_users_user_id"
      end
      # resource path
      local_var_path = '/users/{userId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UserApi.delete_users_user_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#delete_users_user_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a user from a workspace
    # Removes a User from a given Workspace.
    # @param workspace_id [String] Workspace Id
    # @param user_id [String] User Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_workspace_workspace_id_users_user_id(workspace_id, user_id, opts = {})
      delete_workspace_workspace_id_users_user_id_with_http_info(workspace_id, user_id, opts)
      nil
    end

    # Remove a user from a workspace
    # Removes a User from a given Workspace.
    # @param workspace_id [String] Workspace Id
    # @param user_id [String] User Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_workspace_workspace_id_users_user_id_with_http_info(workspace_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.delete_workspace_workspace_id_users_user_id ...'
      end
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling UserApi.delete_workspace_workspace_id_users_user_id"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.delete_workspace_workspace_id_users_user_id"
      end
      # resource path
      local_var_path = '/workspaces/{workspaceId}/users/{userId}'.sub('{' + 'workspaceId' + '}', CGI.escape(workspace_id.to_s)).sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UserApi.delete_workspace_workspace_id_users_user_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#delete_workspace_workspace_id_users_user_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Users
    # Returns the list of all the Users within your Organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @option opts [Integer] :limit The limit of items count to retrieve. (default to 100)
    # @option opts [String] :email A given e-mail address to filter on.
    # @return [GetUsers200Response]
    def get_users(opts = {})
      data, _status_code, _headers = get_users_with_http_info(opts)
      data
    end

    # List Users
    # Returns the list of all the Users within your Organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @option opts [Integer] :limit The limit of items count to retrieve. (default to 100)
    # @option opts [String] :email A given e-mail address to filter on.
    # @return [Array<(GetUsers200Response, Integer, Hash)>] GetUsers200Response data, response status code and response headers
    def get_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_users ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UserApi.get_users, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UserApi.get_users, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'email'].nil? && opts[:'email'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"email"]" when calling UserApi.get_users, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'email'].nil? && opts[:'email'].to_s.length < 6
        fail ArgumentError, 'invalid value for "opts[:"email"]" when calling UserApi.get_users, the character length must be great than or equal to 6.'
      end

      # resource path
      local_var_path = '/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetUsers200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UserApi.get_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a User
    # Retrieves a given User within your Organization.
    # @param user_id [String] User Id
    # @param [Hash] opts the optional parameters
    # @return [User]
    def get_users_user_id(user_id, opts = {})
      data, _status_code, _headers = get_users_user_id_with_http_info(user_id, opts)
      data
    end

    # Get a User
    # Retrieves a given User within your Organization.
    # @param user_id [String] User Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def get_users_user_id_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_users_user_id ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.get_users_user_id"
      end
      # resource path
      local_var_path = '/users/{userId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'User'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UserApi.get_users_user_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_users_user_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a User
    # Updates a given User. Any parameters not provided are left unchanged. 
    # @param user_id [String] User Id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateUser] :update_user 
    # @return [User]
    def patch_users_user_id(user_id, opts = {})
      data, _status_code, _headers = patch_users_user_id_with_http_info(user_id, opts)
      data
    end

    # Update a User
    # Updates a given User. Any parameters not provided are left unchanged. 
    # @param user_id [String] User Id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateUser] :update_user 
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def patch_users_user_id_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.patch_users_user_id ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.patch_users_user_id"
      end
      # resource path
      local_var_path = '/users/{userId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_user'])

      # return_type
      return_type = opts[:debug_return_type] || 'User'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UserApi.patch_users_user_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#patch_users_user_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new User
    # Creates a new application User and sends them an invitation email. `email`: The email address must not match any existing User’s email. `workspaces`: The new User must be associated with at least one Workspace in the Organization. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUser] :create_user 
    # @return [User]
    def post_users(opts = {})
      data, _status_code, _headers = post_users_with_http_info(opts)
      data
    end

    # Create a new User
    # Creates a new application User and sends them an invitation email. &#x60;email&#x60;: The email address must not match any existing User’s email. &#x60;workspaces&#x60;: The new User must be associated with at least one Workspace in the Organization. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateUser] :create_user 
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def post_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.post_users ...'
      end
      # resource path
      local_var_path = '/users'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_user'])

      # return_type
      return_type = opts[:debug_return_type] || 'User'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UserApi.post_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#post_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Associate a user to a workspace
    # Associates a User with a given Workspace.
    # @param workspace_id [String] Workspace Id
    # @param user_id [String] User Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def put_workspaces_workspace_id_users(workspace_id, user_id, opts = {})
      put_workspaces_workspace_id_users_with_http_info(workspace_id, user_id, opts)
      nil
    end

    # Associate a user to a workspace
    # Associates a User with a given Workspace.
    # @param workspace_id [String] Workspace Id
    # @param user_id [String] User Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def put_workspaces_workspace_id_users_with_http_info(workspace_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.put_workspaces_workspace_id_users ...'
      end
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling UserApi.put_workspaces_workspace_id_users"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UserApi.put_workspaces_workspace_id_users"
      end
      # resource path
      local_var_path = '/workspaces/{workspaceId}/users/{userId}'.sub('{' + 'workspaceId' + '}', CGI.escape(workspace_id.to_s)).sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UserApi.put_workspaces_workspace_id_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#put_workspaces_workspace_id_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
