=begin
#Public Api v3

#Build the best experience of digital signature through your own platform. Increase your conversion rates, leverage your data and reduce your costs with Yousign API.

The version of the OpenAPI document: 3.0
Contact: contact@yousign.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

require 'date'
require 'time'

module YousignClientV3
  # Signer
  class Signer
    attr_accessor :id

    attr_accessor :info

    attr_accessor :status

    attr_accessor :fields

    attr_accessor :signature_level

    attr_accessor :signature_authentication_mode

    attr_accessor :signature_link

    attr_accessor :signature_link_expiration_date

    attr_accessor :signature_image_preview

    attr_accessor :redirect_urls

    attr_accessor :custom_text

    attr_accessor :delivery_mode

    attr_accessor :identification_attestation_id

    attr_accessor :sms_notification

    attr_accessor :email_notification

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'info' => :'info',
        :'status' => :'status',
        :'fields' => :'fields',
        :'signature_level' => :'signature_level',
        :'signature_authentication_mode' => :'signature_authentication_mode',
        :'signature_link' => :'signature_link',
        :'signature_link_expiration_date' => :'signature_link_expiration_date',
        :'signature_image_preview' => :'signature_image_preview',
        :'redirect_urls' => :'redirect_urls',
        :'custom_text' => :'custom_text',
        :'delivery_mode' => :'delivery_mode',
        :'identification_attestation_id' => :'identification_attestation_id',
        :'sms_notification' => :'sms_notification',
        :'email_notification' => :'email_notification'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'info' => :'SignerInfo',
        :'status' => :'String',
        :'fields' => :'Array<SignerFieldsInner>',
        :'signature_level' => :'String',
        :'signature_authentication_mode' => :'String',
        :'signature_link' => :'String',
        :'signature_link_expiration_date' => :'Time',
        :'signature_image_preview' => :'String',
        :'redirect_urls' => :'SignerRedirectUrls',
        :'custom_text' => :'SignerCustomText',
        :'delivery_mode' => :'String',
        :'identification_attestation_id' => :'String',
        :'sms_notification' => :'SmsNotification',
        :'email_notification' => :'EmailNotification'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'fields',
        :'signature_authentication_mode',
        :'signature_link',
        :'signature_link_expiration_date',
        :'signature_image_preview',
        :'delivery_mode',
        :'identification_attestation_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `YousignClientV3::Signer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YousignClientV3::Signer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'info')
        self.info = attributes[:'info']
      else
        self.info = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      else
        self.fields = nil
      end

      if attributes.key?(:'signature_level')
        self.signature_level = attributes[:'signature_level']
      else
        self.signature_level = 'electronic_signature'
      end

      if attributes.key?(:'signature_authentication_mode')
        self.signature_authentication_mode = attributes[:'signature_authentication_mode']
      else
        self.signature_authentication_mode = nil
      end

      if attributes.key?(:'signature_link')
        self.signature_link = attributes[:'signature_link']
      else
        self.signature_link = nil
      end

      if attributes.key?(:'signature_link_expiration_date')
        self.signature_link_expiration_date = attributes[:'signature_link_expiration_date']
      else
        self.signature_link_expiration_date = nil
      end

      if attributes.key?(:'signature_image_preview')
        self.signature_image_preview = attributes[:'signature_image_preview']
      else
        self.signature_image_preview = nil
      end

      if attributes.key?(:'redirect_urls')
        self.redirect_urls = attributes[:'redirect_urls']
      else
        self.redirect_urls = nil
      end

      if attributes.key?(:'custom_text')
        self.custom_text = attributes[:'custom_text']
      else
        self.custom_text = nil
      end

      if attributes.key?(:'delivery_mode')
        self.delivery_mode = attributes[:'delivery_mode']
      else
        self.delivery_mode = nil
      end

      if attributes.key?(:'identification_attestation_id')
        self.identification_attestation_id = attributes[:'identification_attestation_id']
      else
        self.identification_attestation_id = nil
      end

      if attributes.key?(:'sms_notification')
        self.sms_notification = attributes[:'sms_notification']
      else
        self.sms_notification = nil
      end

      if attributes.key?(:'email_notification')
        self.email_notification = attributes[:'email_notification']
      else
        self.email_notification = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length < 1
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 1.')
      end

      if @info.nil?
        invalid_properties.push('invalid value for "info", info cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @status.to_s.length < 1
        invalid_properties.push('invalid value for "status", the character length must be great than or equal to 1.')
      end

      if @signature_level.nil?
        invalid_properties.push('invalid value for "signature_level", signature_level cannot be nil.')
      end

      if @signature_link.to_s.length < 1
        invalid_properties.push('invalid value for "signature_link", the character length must be great than or equal to 1.')
      end

      if @signature_image_preview.to_s.length < 1
        invalid_properties.push('invalid value for "signature_image_preview", the character length must be great than or equal to 1.')
      end

      if @redirect_urls.nil?
        invalid_properties.push('invalid value for "redirect_urls", redirect_urls cannot be nil.')
      end

      if @custom_text.nil?
        invalid_properties.push('invalid value for "custom_text", custom_text cannot be nil.')
      end

      if @identification_attestation_id.to_s.length > 255
        invalid_properties.push('invalid value for "identification_attestation_id", the character length must be smaller than or equal to 255.')
      end

      if @identification_attestation_id.to_s.length < 1
        invalid_properties.push('invalid value for "identification_attestation_id", the character length must be great than or equal to 1.')
      end

      if @sms_notification.nil?
        invalid_properties.push('invalid value for "sms_notification", sms_notification cannot be nil.')
      end

      if @email_notification.nil?
        invalid_properties.push('invalid value for "email_notification", email_notification cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @id.to_s.length < 1
      return false if @info.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["initiated", "declined", "notified", "verified", "processing", "consent_given", "signed", "aborted", "error"])
      return false unless status_validator.valid?(@status)
      return false if @status.to_s.length < 1
      return false if @signature_level.nil?
      signature_level_validator = EnumAttributeValidator.new('String', ["electronic_signature", "advanced_electronic_signature", "electronic_signature_with_qualified_certificate", "qualified_electronic_signature", "qualified_electronic_signature_mode_1"])
      return false unless signature_level_validator.valid?(@signature_level)
      signature_authentication_mode_validator = EnumAttributeValidator.new('String', ["otp_email", "otp_sms", "no_otp"])
      return false unless signature_authentication_mode_validator.valid?(@signature_authentication_mode)
      return false if @signature_link.to_s.length < 1
      return false if @signature_image_preview.to_s.length < 1
      return false if @redirect_urls.nil?
      return false if @custom_text.nil?
      delivery_mode_validator = EnumAttributeValidator.new('String', ["email", "none"])
      return false unless delivery_mode_validator.valid?(@delivery_mode)
      return false if @identification_attestation_id.to_s.length > 255
      return false if @identification_attestation_id.to_s.length < 1
      return false if @sms_notification.nil?
      return false if @email_notification.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["initiated", "declined", "notified", "verified", "processing", "consent_given", "signed", "aborted", "error"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] signature_level Object to be assigned
    def signature_level=(signature_level)
      validator = EnumAttributeValidator.new('String', ["electronic_signature", "advanced_electronic_signature", "electronic_signature_with_qualified_certificate", "qualified_electronic_signature", "qualified_electronic_signature_mode_1"])
      unless validator.valid?(signature_level)
        fail ArgumentError, "invalid value for \"signature_level\", must be one of #{validator.allowable_values}."
      end
      @signature_level = signature_level
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] signature_authentication_mode Object to be assigned
    def signature_authentication_mode=(signature_authentication_mode)
      validator = EnumAttributeValidator.new('String', ["otp_email", "otp_sms", "no_otp"])
      unless validator.valid?(signature_authentication_mode)
        fail ArgumentError, "invalid value for \"signature_authentication_mode\", must be one of #{validator.allowable_values}."
      end
      @signature_authentication_mode = signature_authentication_mode
    end

    # Custom attribute writer method with validation
    # @param [Object] signature_link Value to be assigned
    def signature_link=(signature_link)
      if !signature_link.nil? && signature_link.to_s.length < 1
        fail ArgumentError, 'invalid value for "signature_link", the character length must be great than or equal to 1.'
      end

      @signature_link = signature_link
    end

    # Custom attribute writer method with validation
    # @param [Object] signature_image_preview Value to be assigned
    def signature_image_preview=(signature_image_preview)
      if !signature_image_preview.nil? && signature_image_preview.to_s.length < 1
        fail ArgumentError, 'invalid value for "signature_image_preview", the character length must be great than or equal to 1.'
      end

      @signature_image_preview = signature_image_preview
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delivery_mode Object to be assigned
    def delivery_mode=(delivery_mode)
      validator = EnumAttributeValidator.new('String', ["email", "none"])
      unless validator.valid?(delivery_mode)
        fail ArgumentError, "invalid value for \"delivery_mode\", must be one of #{validator.allowable_values}."
      end
      @delivery_mode = delivery_mode
    end

    # Custom attribute writer method with validation
    # @param [Object] identification_attestation_id Value to be assigned
    def identification_attestation_id=(identification_attestation_id)
      if !identification_attestation_id.nil? && identification_attestation_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "identification_attestation_id", the character length must be smaller than or equal to 255.'
      end

      if !identification_attestation_id.nil? && identification_attestation_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "identification_attestation_id", the character length must be great than or equal to 1.'
      end

      @identification_attestation_id = identification_attestation_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          info == o.info &&
          status == o.status &&
          fields == o.fields &&
          signature_level == o.signature_level &&
          signature_authentication_mode == o.signature_authentication_mode &&
          signature_link == o.signature_link &&
          signature_link_expiration_date == o.signature_link_expiration_date &&
          signature_image_preview == o.signature_image_preview &&
          redirect_urls == o.redirect_urls &&
          custom_text == o.custom_text &&
          delivery_mode == o.delivery_mode &&
          identification_attestation_id == o.identification_attestation_id &&
          sms_notification == o.sms_notification &&
          email_notification == o.email_notification
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, info, status, fields, signature_level, signature_authentication_mode, signature_link, signature_link_expiration_date, signature_image_preview, redirect_urls, custom_text, delivery_mode, identification_attestation_id, sms_notification, email_notification].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = YousignClientV3.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
