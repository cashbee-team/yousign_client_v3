=begin
#Public Api v3

#Build the best experience of digital signature through your own platform. Increase your conversion rates, leverage your data and reduce your costs with Yousign API.

The version of the OpenAPI document: 3.0
Contact: contact@yousign.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'date'
require 'time'

module YousignClientV3
  class CreateUser
    # The email address must not match any existing User's email. 
    attr_accessor :email

    # Role assigned to the User in the Organization. 
    attr_accessor :role

    attr_accessor :locale

    # The new User must be associated with at least one Workspace in the Organization. 
    attr_accessor :workspaces

    # User's first name
    attr_accessor :first_name

    # User's last name
    attr_accessor :last_name

    # E.164 format
    attr_accessor :phone_number

    # This property cannot start or end with whitespace, does not allow HTML tags, URL or email. 
    attr_accessor :job_title

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
        :'email' => :'email',
        :'role' => :'role',
        :'locale' => :'locale',
        :'workspaces' => :'workspaces',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'phone_number' => :'phone_number',
        :'job_title' => :'job_title'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'email' => :'String',
        :'role' => :'String',
        :'locale' => :'Locale',
        :'workspaces' => :'Array<String>',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'phone_number' => :'String',
        :'job_title' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'first_name',
        :'last_name',
        :'phone_number',
        :'job_title'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `YousignClientV3::CreateUser` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YousignClientV3::CreateUser`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      else
        self.email = nil
      end

      if attributes.key?(:'role')
        self.role = attributes[:'role']
      else
        self.role = nil
      end

      if attributes.key?(:'locale')
        self.locale = attributes[:'locale']
      else
        self.locale = nil
      end

      if attributes.key?(:'workspaces')
        if (value = attributes[:'workspaces']).is_a?(Array)
          self.workspaces = value
        end
      else
        self.workspaces = nil
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'job_title')
        self.job_title = attributes[:'job_title']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @role.nil?
        invalid_properties.push('invalid value for "role", role cannot be nil.')
      end

      if @locale.nil?
        invalid_properties.push('invalid value for "locale", locale cannot be nil.')
      end

      if @workspaces.nil?
        invalid_properties.push('invalid value for "workspaces", workspaces cannot be nil.')
      end

      if @workspaces.length < 1
        invalid_properties.push('invalid value for "workspaces", number of items must be greater than or equal to 1.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 255
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 255.')
      end

      if !@first_name.nil? && @first_name.to_s.length < 1
        invalid_properties.push('invalid value for "first_name", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\''()\- ]+(?<!\s)$/)
      if !@first_name.nil? && @first_name !~ pattern
        invalid_properties.push("invalid value for \"first_name\", must conform to the pattern #{pattern}.")
      end

      if !@last_name.nil? && @last_name.to_s.length > 255
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 255.')
      end

      if !@last_name.nil? && @last_name.to_s.length < 1
        invalid_properties.push('invalid value for "last_name", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\''()\- ]+(?<!\s)$/)
      if !@last_name.nil? && @last_name !~ pattern
        invalid_properties.push("invalid value for \"last_name\", must conform to the pattern #{pattern}.")
      end

      if !@phone_number.nil? && @phone_number.to_s.length < 1
        invalid_properties.push('invalid value for "phone_number", the character length must be great than or equal to 1.')
      end

      if !@job_title.nil? && @job_title.to_s.length > 255
        invalid_properties.push('invalid value for "job_title", the character length must be smaller than or equal to 255.')
      end

      if !@job_title.nil? && @job_title.to_s.length < 1
        invalid_properties.push('invalid value for "job_title", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @email.nil?
      return false if @role.nil?
      role_validator = EnumAttributeValidator.new('String', ["admin", "member"])
      return false unless role_validator.valid?(@role)
      return false if @locale.nil?
      return false if @workspaces.nil?
      return false if @workspaces.length < 1
      return false if !@first_name.nil? && @first_name.to_s.length > 255
      return false if !@first_name.nil? && @first_name.to_s.length < 1
      return false if !@first_name.nil? && @first_name !~ Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\''()\- ]+(?<!\s)$/)
      return false if !@last_name.nil? && @last_name.to_s.length > 255
      return false if !@last_name.nil? && @last_name.to_s.length < 1
      return false if !@last_name.nil? && @last_name !~ Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\''()\- ]+(?<!\s)$/)
      return false if !@phone_number.nil? && @phone_number.to_s.length < 1
      return false if !@job_title.nil? && @job_title.to_s.length > 255
      return false if !@job_title.nil? && @job_title.to_s.length < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] role Object to be assigned
    def role=(role)
      validator = EnumAttributeValidator.new('String', ["admin", "member"])
      unless validator.valid?(role)
        fail ArgumentError, "invalid value for \"role\", must be one of #{validator.allowable_values}."
      end
      @role = role
    end

    # Custom attribute writer method with validation
    # @param [Object] workspaces Value to be assigned
    def workspaces=(workspaces)
      if workspaces.nil?
        fail ArgumentError, 'workspaces cannot be nil'
      end

      if workspaces.length < 1
        fail ArgumentError, 'invalid value for "workspaces", number of items must be greater than or equal to 1.'
      end

      @workspaces = workspaces
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 255.'
      end

      if !first_name.nil? && first_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "first_name", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\''()\- ]+(?<!\s)$/)
      if !first_name.nil? && first_name !~ pattern
        fail ArgumentError, "invalid value for \"first_name\", must conform to the pattern #{pattern}."
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 255.'
      end

      if !last_name.nil? && last_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "last_name", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^(?!\s)[0-9A-Za-zĄÀÁÂÃÄÅÇĆÈÉÊËĘÌÍÎÏŁÑŃÒÓÔÕÖŚÙÚÛÜÝŹŻąàáâãäåæçćèéêëęìíîïłñńòóôõöśùúûüýÿźżßĀāĂăĈĉĊċČčĎďĐđĒēĔĕĖėĚěĜĝĞğĠġĢģĤĥĦħĨĩĪīĬĭĮįİıĲĳĴĵĶķĸĹĺĻļĽľĿŀŅņŇňŉŊŋŌōŎŏŐőŒœŔŕŖŗŘřŜŝŞşŠšŢţŤťŦŧŨũŪūŬŭŮůŰűŲųŴŵŶŷŸŽžſøØÆœ`\''()\- ]+(?<!\s)$/)
      if !last_name.nil? && last_name !~ pattern
        fail ArgumentError, "invalid value for \"last_name\", must conform to the pattern #{pattern}."
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if !phone_number.nil? && phone_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "phone_number", the character length must be great than or equal to 1.'
      end

      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] job_title Value to be assigned
    def job_title=(job_title)
      if !job_title.nil? && job_title.to_s.length > 255
        fail ArgumentError, 'invalid value for "job_title", the character length must be smaller than or equal to 255.'
      end

      if !job_title.nil? && job_title.to_s.length < 1
        fail ArgumentError, 'invalid value for "job_title", the character length must be great than or equal to 1.'
      end

      @job_title = job_title
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email == o.email &&
          role == o.role &&
          locale == o.locale &&
          workspaces == o.workspaces &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          phone_number == o.phone_number &&
          job_title == o.job_title
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [email, role, locale, workspaces, first_name, last_name, phone_number, job_title].hash
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
