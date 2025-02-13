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
  class ReadOnlyText1
    attr_accessor :page

    attr_accessor :x

    attr_accessor :y

    # If not set, the width is automatically calculated with the mention length.
    attr_accessor :width

    # The height must be 24 or a multiple of 15 greater than 24. If height is not provided, it will be calculated depending on the number of newlines in the mention.
    attr_accessor :height

    attr_accessor :text

    attr_accessor :font

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'page' => :'page',
        :'x' => :'x',
        :'y' => :'y',
        :'width' => :'width',
        :'height' => :'height',
        :'text' => :'text',
        :'font' => :'font'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'page' => :'Integer',
        :'x' => :'Integer',
        :'y' => :'Integer',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'text' => :'String',
        :'font' => :'UpdateFieldFont'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'width',
        :'height',
        :'font'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `YousignClientV3::ReadOnlyText1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YousignClientV3::ReadOnlyText1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.key?(:'x')
        self.x = attributes[:'x']
      end

      if attributes.key?(:'y')
        self.y = attributes[:'y']
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'font')
        self.font = attributes[:'font']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@page.nil? && @page < 1
        invalid_properties.push('invalid value for "page", must be greater than or equal to 1.')
      end

      if !@x.nil? && @x > 32767
        invalid_properties.push('invalid value for "x", must be smaller than or equal to 32767.')
      end

      if !@x.nil? && @x < 0
        invalid_properties.push('invalid value for "x", must be greater than or equal to 0.')
      end

      if !@y.nil? && @y > 32767
        invalid_properties.push('invalid value for "y", must be smaller than or equal to 32767.')
      end

      if !@y.nil? && @y < 0
        invalid_properties.push('invalid value for "y", must be greater than or equal to 0.')
      end

      if !@width.nil? && @width < 24
        invalid_properties.push('invalid value for "width", must be greater than or equal to 24.')
      end

      if !@height.nil? && @height < 24
        invalid_properties.push('invalid value for "height", must be greater than or equal to 24.')
      end

      if !@text.nil? && @text.to_s.length > 5000
        invalid_properties.push('invalid value for "text", the character length must be smaller than or equal to 5000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@page.nil? && @page < 1
      return false if !@x.nil? && @x > 32767
      return false if !@x.nil? && @x < 0
      return false if !@y.nil? && @y > 32767
      return false if !@y.nil? && @y < 0
      return false if !@width.nil? && @width < 24
      return false if !@height.nil? && @height < 24
      return false if !@text.nil? && @text.to_s.length > 5000
      true
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
    # @param [Object] width Value to be assigned
    def width=(width)
      if !width.nil? && width < 24
        fail ArgumentError, 'invalid value for "width", must be greater than or equal to 24.'
      end

      @width = width
    end

    # Custom attribute writer method with validation
    # @param [Object] height Value to be assigned
    def height=(height)
      if !height.nil? && height < 24
        fail ArgumentError, 'invalid value for "height", must be greater than or equal to 24.'
      end

      @height = height
    end

    # Custom attribute writer method with validation
    # @param [Object] text Value to be assigned
    def text=(text)
      if text.nil?
        fail ArgumentError, 'text cannot be nil'
      end

      if text.to_s.length > 5000
        fail ArgumentError, 'invalid value for "text", the character length must be smaller than or equal to 5000.'
      end

      @text = text
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          page == o.page &&
          x == o.x &&
          y == o.y &&
          width == o.width &&
          height == o.height &&
          text == o.text &&
          font == o.font
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [page, x, y, width, height, text, font].hash
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
