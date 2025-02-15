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
  class ElectronicSealDocumentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Download an Electronic Seal Document
    # Download a given Electronic Seal Document.
    # @param electronic_seal_document_id [String] Electronic Seal Id
    # @param [Hash] opts the optional parameters
    # @return [File]
    def download_electronic_seal_document(electronic_seal_document_id, opts = {})
      data, _status_code, _headers = download_electronic_seal_document_with_http_info(electronic_seal_document_id, opts)
      data
    end

    # Download an Electronic Seal Document
    # Download a given Electronic Seal Document.
    # @param electronic_seal_document_id [String] Electronic Seal Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def download_electronic_seal_document_with_http_info(electronic_seal_document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElectronicSealDocumentApi.download_electronic_seal_document ...'
      end
      # verify the required parameter 'electronic_seal_document_id' is set
      if @api_client.config.client_side_validation && electronic_seal_document_id.nil?
        fail ArgumentError, "Missing the required parameter 'electronic_seal_document_id' when calling ElectronicSealDocumentApi.download_electronic_seal_document"
      end
      # resource path
      local_var_path = '/electronic_seal_documents/{electronicSealDocumentId}/download'.sub('{' + 'electronicSealDocumentId' + '}', CGI.escape(electronic_seal_document_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ElectronicSealDocumentApi.download_electronic_seal_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElectronicSealDocumentApi#download_electronic_seal_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an Electronic Seal Document
    # Create an Electronic Seal Document from an other one.
    # @param file [File] PDF file
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password 
    # @return [ElectronicSealDocument]
    def upload_electronic_seal_document(file, opts = {})
      data, _status_code, _headers = upload_electronic_seal_document_with_http_info(file, opts)
      data
    end

    # Create an Electronic Seal Document
    # Create an Electronic Seal Document from an other one.
    # @param file [File] PDF file
    # @param [Hash] opts the optional parameters
    # @option opts [String] :password 
    # @return [Array<(ElectronicSealDocument, Integer, Hash)>] ElectronicSealDocument data, response status code and response headers
    def upload_electronic_seal_document_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElectronicSealDocumentApi.upload_electronic_seal_document ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling ElectronicSealDocumentApi.upload_electronic_seal_document"
      end
      # resource path
      local_var_path = '/electronic_seal_documents'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data', 'application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file
      form_params['password'] = opts[:'password'] if !opts[:'password'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ElectronicSealDocument'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ElectronicSealDocumentApi.upload_electronic_seal_document",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElectronicSealDocumentApi#upload_electronic_seal_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
