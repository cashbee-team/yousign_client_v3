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
  class ElectronicSealAuditTrailApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Download an Electronic Seal Audit Trail
    # Electronic Seal Audit Trail is only available when the Electronic Seal is \"done\".
    # @param electronic_seal_id [String] Electronic Seal Id
    # @param [Hash] opts the optional parameters
    # @return [File]
    def download_electronic_seal_audit_trail(electronic_seal_id, opts = {})
      data, _status_code, _headers = download_electronic_seal_audit_trail_with_http_info(electronic_seal_id, opts)
      data
    end

    # Download an Electronic Seal Audit Trail
    # Electronic Seal Audit Trail is only available when the Electronic Seal is \&quot;done\&quot;.
    # @param electronic_seal_id [String] Electronic Seal Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def download_electronic_seal_audit_trail_with_http_info(electronic_seal_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElectronicSealAuditTrailApi.download_electronic_seal_audit_trail ...'
      end
      # verify the required parameter 'electronic_seal_id' is set
      if @api_client.config.client_side_validation && electronic_seal_id.nil?
        fail ArgumentError, "Missing the required parameter 'electronic_seal_id' when calling ElectronicSealAuditTrailApi.download_electronic_seal_audit_trail"
      end
      # resource path
      local_var_path = '/electronic_seals/{electronicSealId}/audit_trails/download'.sub('{' + 'electronicSealId' + '}', CGI.escape(electronic_seal_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ElectronicSealAuditTrailApi.download_electronic_seal_audit_trail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElectronicSealAuditTrailApi#download_electronic_seal_audit_trail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an Electronic Seal Audit Trail
    # Electronic Seal Audit Trail is only available when the Electronic Seal is \"done\".
    # @param electronic_seal_id [String] Electronic Seal Id
    # @param [Hash] opts the optional parameters
    # @return [ElectronicSealAuditTrail]
    def get_electronic_seal_audit_trail(electronic_seal_id, opts = {})
      data, _status_code, _headers = get_electronic_seal_audit_trail_with_http_info(electronic_seal_id, opts)
      data
    end

    # Get an Electronic Seal Audit Trail
    # Electronic Seal Audit Trail is only available when the Electronic Seal is \&quot;done\&quot;.
    # @param electronic_seal_id [String] Electronic Seal Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElectronicSealAuditTrail, Integer, Hash)>] ElectronicSealAuditTrail data, response status code and response headers
    def get_electronic_seal_audit_trail_with_http_info(electronic_seal_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElectronicSealAuditTrailApi.get_electronic_seal_audit_trail ...'
      end
      # verify the required parameter 'electronic_seal_id' is set
      if @api_client.config.client_side_validation && electronic_seal_id.nil?
        fail ArgumentError, "Missing the required parameter 'electronic_seal_id' when calling ElectronicSealAuditTrailApi.get_electronic_seal_audit_trail"
      end
      # resource path
      local_var_path = '/electronic_seals/{electronicSealId}/audit_trails'.sub('{' + 'electronicSealId' + '}', CGI.escape(electronic_seal_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ElectronicSealAuditTrail'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ElectronicSealAuditTrailApi.get_electronic_seal_audit_trail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElectronicSealAuditTrailApi#get_electronic_seal_audit_trail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
