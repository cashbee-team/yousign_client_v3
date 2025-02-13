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
  class ElectronicSealImageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete an Electronic Seal Image
    # Deletes a given Electronic Seal Image.
    # @param electronic_seal_image_id [String] Electronic Seal Image Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_electronic_seal_image(electronic_seal_image_id, opts = {})
      delete_electronic_seal_image_with_http_info(electronic_seal_image_id, opts)
      nil
    end

    # Delete an Electronic Seal Image
    # Deletes a given Electronic Seal Image.
    # @param electronic_seal_image_id [String] Electronic Seal Image Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_electronic_seal_image_with_http_info(electronic_seal_image_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElectronicSealImageApi.delete_electronic_seal_image ...'
      end
      # verify the required parameter 'electronic_seal_image_id' is set
      if @api_client.config.client_side_validation && electronic_seal_image_id.nil?
        fail ArgumentError, "Missing the required parameter 'electronic_seal_image_id' when calling ElectronicSealImageApi.delete_electronic_seal_image"
      end
      # resource path
      local_var_path = '/electronic_seal_images/{electronicSealImageId}'.sub('{' + 'electronicSealImageId' + '}', CGI.escape(electronic_seal_image_id.to_s))

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
        :operation => :"ElectronicSealImageApi.delete_electronic_seal_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElectronicSealImageApi#delete_electronic_seal_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download an Electronic Seal Image
    # Download a given Electronic Seal Image.
    # @param electronic_seal_image_id [String] Electronic Seal Image Id
    # @param [Hash] opts the optional parameters
    # @return [File]
    def download_electronic_seal_image(electronic_seal_image_id, opts = {})
      data, _status_code, _headers = download_electronic_seal_image_with_http_info(electronic_seal_image_id, opts)
      data
    end

    # Download an Electronic Seal Image
    # Download a given Electronic Seal Image.
    # @param electronic_seal_image_id [String] Electronic Seal Image Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def download_electronic_seal_image_with_http_info(electronic_seal_image_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElectronicSealImageApi.download_electronic_seal_image ...'
      end
      # verify the required parameter 'electronic_seal_image_id' is set
      if @api_client.config.client_side_validation && electronic_seal_image_id.nil?
        fail ArgumentError, "Missing the required parameter 'electronic_seal_image_id' when calling ElectronicSealImageApi.download_electronic_seal_image"
      end
      # resource path
      local_var_path = '/electronic_seal_images/{electronicSealImageId}/download'.sub('{' + 'electronicSealImageId' + '}', CGI.escape(electronic_seal_image_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/png', 'image/jpg', 'image/gif', 'application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ElectronicSealImageApi.download_electronic_seal_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElectronicSealImageApi#download_electronic_seal_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload an Electronic Seal Image
    # Upload an Electronic Seal Image to use for creating an Electronic Seal (can be used for several Electronic Seals).
    # @param file [File] Seal image
    # @param name [String] 
    # @param [Hash] opts the optional parameters
    # @return [ElectronicSealImage]
    def upload_electronic_seal_image(file, name, opts = {})
      data, _status_code, _headers = upload_electronic_seal_image_with_http_info(file, name, opts)
      data
    end

    # Upload an Electronic Seal Image
    # Upload an Electronic Seal Image to use for creating an Electronic Seal (can be used for several Electronic Seals).
    # @param file [File] Seal image
    # @param name [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ElectronicSealImage, Integer, Hash)>] ElectronicSealImage data, response status code and response headers
    def upload_electronic_seal_image_with_http_info(file, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ElectronicSealImageApi.upload_electronic_seal_image ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling ElectronicSealImageApi.upload_electronic_seal_image"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ElectronicSealImageApi.upload_electronic_seal_image"
      end
      # resource path
      local_var_path = '/electronic_seal_images'

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
      form_params['name'] = name

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ElectronicSealImage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ElectronicSealImageApi.upload_electronic_seal_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ElectronicSealImageApi#upload_electronic_seal_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
