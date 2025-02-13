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
  class FromScratch1Info
    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :email

    # E.164 format. Becomes mandatory if `signature_authentication_mode` requires a phone number.
    attr_accessor :phone_number

    attr_accessor :locale

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
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'email' => :'email',
        :'phone_number' => :'phone_number',
        :'locale' => :'locale'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'email' => :'String',
        :'phone_number' => :'String',
        :'locale' => :'Locale'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'phone_number',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `YousignClientV3::FromScratch1Info` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YousignClientV3::FromScratch1Info`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      else
        self.first_name = nil
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      else
        self.last_name = nil
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      else
        self.email = nil
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'locale')
        self.locale = attributes[:'locale']
      else
        self.locale = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @first_name.to_s.length > 255
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 255.')
      end

      if @first_name.to_s.length < 1
        invalid_properties.push('invalid value for "first_name", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\'()\- ]+(?<!\s)$/)
      if @first_name !~ pattern
        invalid_properties.push("invalid value for \"first_name\", must conform to the pattern #{pattern}.")
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @last_name.to_s.length > 255
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 255.')
      end

      if @last_name.to_s.length < 1
        invalid_properties.push('invalid value for "last_name", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\'()\- ]+(?<!\s)$/)
      if @last_name !~ pattern
        invalid_properties.push("invalid value for \"last_name\", must conform to the pattern #{pattern}.")
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @email.to_s.length < 1
        invalid_properties.push('invalid value for "email", the character length must be great than or equal to 1.')
      end

      if !@phone_number.nil? && @phone_number.to_s.length < 1
        invalid_properties.push('invalid value for "phone_number", the character length must be great than or equal to 1.')
      end

      if @locale.nil?
        invalid_properties.push('invalid value for "locale", locale cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @first_name.nil?
      return false if @first_name.to_s.length > 255
      return false if @first_name.to_s.length < 1
      return false if @first_name !~ Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\'()\- ]+(?<!\s)$/)
      return false if @last_name.nil?
      return false if @last_name.to_s.length > 255
      return false if @last_name.to_s.length < 1
      return false if @last_name !~ Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\'()\- ]+(?<!\s)$/)
      return false if @email.nil?
      return false if @email.to_s.length < 1
      return false if !@phone_number.nil? && @phone_number.to_s.length < 1
      return false if @locale.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if first_name.nil?
        fail ArgumentError, 'first_name cannot be nil'
      end

      if first_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 255.'
      end

      if first_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "first_name", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\'()\- ]+(?<!\s)$/)
      if first_name !~ pattern
        fail ArgumentError, "invalid value for \"first_name\", must conform to the pattern #{pattern}."
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if last_name.nil?
        fail ArgumentError, 'last_name cannot be nil'
      end

      if last_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 255.'
      end

      if last_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "last_name", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\'()\- ]+(?<!\s)$/)
      if last_name !~ pattern
        fail ArgumentError, "invalid value for \"last_name\", must conform to the pattern #{pattern}."
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, 'email cannot be nil'
      end

      if email.to_s.length < 1
        fail ArgumentError, 'invalid value for "email", the character length must be great than or equal to 1.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if !phone_number.nil? && phone_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "phone_number", the character length must be great than or equal to 1.'
      end

      @phone_number = phone_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          email == o.email &&
          phone_number == o.phone_number &&
          locale == o.locale
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [first_name, last_name, email, phone_number, locale].hash
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
