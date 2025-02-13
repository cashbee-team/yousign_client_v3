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
  class Checkbox2
    attr_accessor :document_id

    attr_accessor :type

    attr_accessor :page

    attr_accessor :x

    attr_accessor :y

    # The omission of size parameter is considered as deprecated. The size determines both the width and height of the checkbox.
    attr_accessor :size

    attr_accessor :optional

    attr_accessor :name

    attr_accessor :checked

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
        :'document_id' => :'document_id',
        :'type' => :'type',
        :'page' => :'page',
        :'x' => :'x',
        :'y' => :'y',
        :'size' => :'size',
        :'optional' => :'optional',
        :'name' => :'name',
        :'checked' => :'checked'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'document_id' => :'String',
        :'type' => :'String',
        :'page' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer',
        :'size' => :'Integer',
        :'optional' => :'Boolean',
        :'name' => :'String',
        :'checked' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `YousignClientV3::Checkbox2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YousignClientV3::Checkbox2`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'document_id')
        self.document_id = attributes[:'document_id']
      else
        self.document_id = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      else
        self.page = nil
      end

      if attributes.key?(:'x')
        self.x = attributes[:'x']
      else
        self.x = nil
      end

      if attributes.key?(:'y')
        self.y = attributes[:'y']
      else
        self.y = nil
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'optional')
        self.optional = attributes[:'optional']
      else
        self.optional = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'checked')
        self.checked = attributes[:'checked']
      else
        self.checked = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @document_id.nil?
        invalid_properties.push('invalid value for "document_id", document_id cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @page.nil?
        invalid_properties.push('invalid value for "page", page cannot be nil.')
      end

      if @page < 1
        invalid_properties.push('invalid value for "page", must be greater than or equal to 1.')
      end

      if @x.nil?
        invalid_properties.push('invalid value for "x", x cannot be nil.')
      end

      if @x > 32767
        invalid_properties.push('invalid value for "x", must be smaller than or equal to 32767.')
      end

      if @x < 0
        invalid_properties.push('invalid value for "x", must be greater than or equal to 0.')
      end

      if @y.nil?
        invalid_properties.push('invalid value for "y", y cannot be nil.')
      end

      if @y > 32767
        invalid_properties.push('invalid value for "y", must be smaller than or equal to 32767.')
      end

      if @y < 0
        invalid_properties.push('invalid value for "y", must be greater than or equal to 0.')
      end

      if !@size.nil? && @size > 240
        invalid_properties.push('invalid value for "size", must be smaller than or equal to 240.')
      end

      if !@size.nil? && @size < 8
        invalid_properties.push('invalid value for "size", must be greater than or equal to 8.')
      end

      if @optional.nil?
        invalid_properties.push('invalid value for "optional", optional cannot be nil.')
      end

      if @checked.nil?
        invalid_properties.push('invalid value for "checked", checked cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @document_id.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["checkbox"])
      return false unless type_validator.valid?(@type)
      return false if @page.nil?
      return false if @page < 1
      return false if @x.nil?
      return false if @x > 32767
      return false if @x < 0
      return false if @y.nil?
      return false if @y > 32767
      return false if @y < 0
      return false if !@size.nil? && @size > 240
      return false if !@size.nil? && @size < 8
      return false if @optional.nil?
      return false if @checked.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["checkbox"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] page Value to be assigned
    def page=(page)
      if page.nil?
        fail ArgumentError, 'page cannot be nil'
      end

      if page < 1
        fail ArgumentError, 'invalid value for "page", must be greater than or equal to 1.'
      end

      @page = page
    end

    # Custom attribute writer method with validation
    # @param [Object] x Value to be assigned
    def x=(x)
      if x.nil?
        fail ArgumentError, 'x cannot be nil'
      end

      if x > 32767
        fail ArgumentError, 'invalid value for "x", must be smaller than or equal to 32767.'
      end

      if x < 0
        fail ArgumentError, 'invalid value for "x", must be greater than or equal to 0.'
      end

      @x = x
    end

    # Custom attribute writer method with validation
    # @param [Object] y Value to be assigned
    def y=(y)
      if y.nil?
        fail ArgumentError, 'y cannot be nil'
      end

      if y > 32767
        fail ArgumentError, 'invalid value for "y", must be smaller than or equal to 32767.'
      end

      if y < 0
        fail ArgumentError, 'invalid value for "y", must be greater than or equal to 0.'
      end

      @y = y
    end

    # Custom attribute writer method with validation
    # @param [Object] size Value to be assigned
    def size=(size)
      if size.nil?
        fail ArgumentError, 'size cannot be nil'
      end

      if size > 240
        fail ArgumentError, 'invalid value for "size", must be smaller than or equal to 240.'
      end

      if size < 8
        fail ArgumentError, 'invalid value for "size", must be greater than or equal to 8.'
      end

      @size = size
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          document_id == o.document_id &&
          type == o.type &&
          page == o.page &&
          x == o.x &&
          y == o.y &&
          size == o.size &&
          optional == o.optional &&
          name == o.name &&
          checked == o.checked
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [document_id, type, page, x, y, size, optional, name, checked].hash
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
