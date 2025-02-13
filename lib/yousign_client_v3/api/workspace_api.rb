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
  class WorkspaceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a Workspace
    # Deletes a given Workspace and transfers everything that is attached to this Workspace to a another specified Workspace.
    # @param workspace_id [String] Workspace Id
    # @param [Hash] opts the optional parameters
    # @option opts [DeleteWorkspace] :delete_workspace 
    # @return [nil]
    def delete_workspace(workspace_id, opts = {})
      delete_workspace_with_http_info(workspace_id, opts)
      nil
    end

    # Delete a Workspace
    # Deletes a given Workspace and transfers everything that is attached to this Workspace to a another specified Workspace.
    # @param workspace_id [String] Workspace Id
    # @param [Hash] opts the optional parameters
    # @option opts [DeleteWorkspace] :delete_workspace 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_workspace_with_http_info(workspace_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.delete_workspace ...'
      end
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspaceApi.delete_workspace"
      end
      # resource path
      local_var_path = '/workspaces/{workspaceId}'.sub('{' + 'workspaceId' + '}', CGI.escape(workspace_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'delete_workspace'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.delete_workspace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#delete_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Workspaces
    # Returns the list of all Workspaces within your Organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @option opts [Integer] :limit The limit of items count to retrieve. (default to 10)
    # @return [GetWorkspaces200Response]
    def get_workspaces(opts = {})
      data, _status_code, _headers = get_workspaces_with_http_info(opts)
      data
    end

    # List Workspaces
    # Returns the list of all Workspaces within your Organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @option opts [Integer] :limit The limit of items count to retrieve. (default to 10)
    # @return [Array<(GetWorkspaces200Response, Integer, Hash)>] GetWorkspaces200Response data, response status code and response headers
    def get_workspaces_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.get_workspaces ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WorkspaceApi.get_workspaces, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WorkspaceApi.get_workspaces, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/workspaces'

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
      return_type = opts[:debug_return_type] || 'GetWorkspaces200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.get_workspaces",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#get_workspaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the default Workspace
    # Retrieves the default Workspace.
    # @param [Hash] opts the optional parameters
    # @return [Workspace]
    def get_workspaces_default(opts = {})
      data, _status_code, _headers = get_workspaces_default_with_http_info(opts)
      data
    end

    # Get the default Workspace
    # Retrieves the default Workspace.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Workspace, Integer, Hash)>] Workspace data, response status code and response headers
    def get_workspaces_default_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.get_workspaces_default ...'
      end
      # resource path
      local_var_path = '/workspaces/default'

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
      return_type = opts[:debug_return_type] || 'Workspace'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.get_workspaces_default",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#get_workspaces_default\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Workspace
    # Retrieves a given Workspace.
    # @param workspace_id [String] Workspace Id
    # @param [Hash] opts the optional parameters
    # @return [Workspace]
    def get_workspaces_workspace_id(workspace_id, opts = {})
      data, _status_code, _headers = get_workspaces_workspace_id_with_http_info(workspace_id, opts)
      data
    end

    # Get a Workspace
    # Retrieves a given Workspace.
    # @param workspace_id [String] Workspace Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Workspace, Integer, Hash)>] Workspace data, response status code and response headers
    def get_workspaces_workspace_id_with_http_info(workspace_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.get_workspaces_workspace_id ...'
      end
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspaceApi.get_workspaces_workspace_id"
      end
      # resource path
      local_var_path = '/workspaces/{workspaceId}'.sub('{' + 'workspaceId' + '}', CGI.escape(workspace_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Workspace'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.get_workspaces_workspace_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#get_workspaces_workspace_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark the given Workspace as default
    # Marks the given Workspace as default.
    # @param [Hash] opts the optional parameters
    # @option opts [MarkWorkspaceAsDefault] :mark_workspace_as_default 
    # @return [nil]
    def mark_workspace_as_default(opts = {})
      mark_workspace_as_default_with_http_info(opts)
      nil
    end

    # Mark the given Workspace as default
    # Marks the given Workspace as default.
    # @param [Hash] opts the optional parameters
    # @option opts [MarkWorkspaceAsDefault] :mark_workspace_as_default 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def mark_workspace_as_default_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.mark_workspace_as_default ...'
      end
      # resource path
      local_var_path = '/workspaces/default'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'mark_workspace_as_default'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.mark_workspace_as_default",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#mark_workspace_as_default\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Workspace
    # Updates a given Workspace. Any parameters not provided are left unchanged. 
    # @param workspace_id [String] Workspace Id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWorkspace] :update_workspace 
    # @return [Workspace]
    def patch_workspaces_workspace_id(workspace_id, opts = {})
      data, _status_code, _headers = patch_workspaces_workspace_id_with_http_info(workspace_id, opts)
      data
    end

    # Update a Workspace
    # Updates a given Workspace. Any parameters not provided are left unchanged. 
    # @param workspace_id [String] Workspace Id
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWorkspace] :update_workspace 
    # @return [Array<(Workspace, Integer, Hash)>] Workspace data, response status code and response headers
    def patch_workspaces_workspace_id_with_http_info(workspace_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.patch_workspaces_workspace_id ...'
      end
      # verify the required parameter 'workspace_id' is set
      if @api_client.config.client_side_validation && workspace_id.nil?
        fail ArgumentError, "Missing the required parameter 'workspace_id' when calling WorkspaceApi.patch_workspaces_workspace_id"
      end
      # resource path
      local_var_path = '/workspaces/{workspaceId}'.sub('{' + 'workspaceId' + '}', CGI.escape(workspace_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_workspace'])

      # return_type
      return_type = opts[:debug_return_type] || 'Workspace'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.patch_workspaces_workspace_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#patch_workspaces_workspace_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Workspace
    # Creates a new Workspace in the organization.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWorkspace] :create_workspace 
    # @return [Workspace]
    def post_workspace(opts = {})
      data, _status_code, _headers = post_workspace_with_http_info(opts)
      data
    end

    # Create a Workspace
    # Creates a new Workspace in the organization.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWorkspace] :create_workspace 
    # @return [Array<(Workspace, Integer, Hash)>] Workspace data, response status code and response headers
    def post_workspace_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspaceApi.post_workspace ...'
      end
      # resource path
      local_var_path = '/workspaces'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_workspace'])

      # return_type
      return_type = opts[:debug_return_type] || 'Workspace'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WorkspaceApi.post_workspace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspaceApi#post_workspace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
