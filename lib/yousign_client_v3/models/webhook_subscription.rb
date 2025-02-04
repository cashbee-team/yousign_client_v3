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
  class WebhookSubscription
    attr_accessor :id

    # Https target URL of the webhook
    attr_accessor :endpoint

    # Short description of the webhook
    attr_accessor :description

    attr_accessor :sandbox

    attr_accessor :subscribed_events

    # Autogenerated 32 bytes key
    attr_accessor :secret_key

    attr_accessor :scopes

    attr_accessor :workspaces

    # If a Webhook request fails for any reason, Yousign will retry the request 8 times using a back-off mechanism after: 2, 6, 30, 60, 300, 1080, 1440, 2880 min
    attr_accessor :auto_retry

    # Is the webhook enabled?
    attr_accessor :enabled

    attr_accessor :created_at

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'endpoint' => :'endpoint',
        :'description' => :'description',
        :'sandbox' => :'sandbox',
        :'subscribed_events' => :'subscribed_events',
        :'secret_key' => :'secret_key',
        :'scopes' => :'scopes',
        :'workspaces' => :'workspaces',
        :'auto_retry' => :'auto_retry',
        :'enabled' => :'enabled',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
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
        :'endpoint' => :'String',
        :'description' => :'String',
        :'sandbox' => :'Boolean',
        :'subscribed_events' => :'WebhookSubscriptionSubscribedEvents',
        :'secret_key' => :'String',
        :'scopes' => :'WebhookSubscriptionScopes',
        :'workspaces' => :'WebhookSubscriptionWorkspaces',
        :'auto_retry' => :'Boolean',
        :'enabled' => :'Boolean',
        :'created_at' => :'Time',
        :'updated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
        :'updated_at'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `YousignClientV3::WebhookSubscription` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YousignClientV3::WebhookSubscription`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'endpoint')
        self.endpoint = attributes[:'endpoint']
      else
        self.endpoint = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      else
        self.description = nil
      end

      if attributes.key?(:'sandbox')
        self.sandbox = attributes[:'sandbox']
      else
        self.sandbox = nil
      end

      if attributes.key?(:'subscribed_events')
        self.subscribed_events = attributes[:'subscribed_events']
      else
        self.subscribed_events = nil
      end

      if attributes.key?(:'secret_key')
        self.secret_key = attributes[:'secret_key']
      else
        self.secret_key = nil
      end

      if attributes.key?(:'scopes')
        self.scopes = attributes[:'scopes']
      else
        self.scopes = nil
      end

      if attributes.key?(:'workspaces')
        self.workspaces = attributes[:'workspaces']
      else
        self.workspaces = nil
      end

      if attributes.key?(:'auto_retry')
        self.auto_retry = attributes[:'auto_retry']
      else
        self.auto_retry = nil
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      else
        self.enabled = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      else
        self.updated_at = nil
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

      if @endpoint.nil?
        invalid_properties.push('invalid value for "endpoint", endpoint cannot be nil.')
      end

      if @endpoint.to_s.length > 255
        invalid_properties.push('invalid value for "endpoint", the character length must be smaller than or equal to 255.')
      end

      if @description.to_s.length > 128
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 128.')
      end

      if @sandbox.nil?
        invalid_properties.push('invalid value for "sandbox", sandbox cannot be nil.')
      end

      if @subscribed_events.nil?
        invalid_properties.push('invalid value for "subscribed_events", subscribed_events cannot be nil.')
      end

      if @secret_key.nil?
        invalid_properties.push('invalid value for "secret_key", secret_key cannot be nil.')
      end

      if @scopes.nil?
        invalid_properties.push('invalid value for "scopes", scopes cannot be nil.')
      end

      if @workspaces.nil?
        invalid_properties.push('invalid value for "workspaces", workspaces cannot be nil.')
      end

      if @auto_retry.nil?
        invalid_properties.push('invalid value for "auto_retry", auto_retry cannot be nil.')
      end

      if @enabled.nil?
        invalid_properties.push('invalid value for "enabled", enabled cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @endpoint.nil?
      return false if @endpoint.to_s.length > 255
      return false if @description.to_s.length > 128
      return false if @sandbox.nil?
      return false if @subscribed_events.nil?
      return false if @secret_key.nil?
      return false if @scopes.nil?
      return false if @workspaces.nil?
      return false if @auto_retry.nil?
      return false if @enabled.nil?
      return false if @created_at.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] endpoint Value to be assigned
    def endpoint=(endpoint)
      if endpoint.nil?
        fail ArgumentError, 'endpoint cannot be nil'
      end

      if endpoint.to_s.length > 255
        fail ArgumentError, 'invalid value for "endpoint", the character length must be smaller than or equal to 255.'
      end

      @endpoint = endpoint
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 128
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 128.'
      end

      @description = description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          endpoint == o.endpoint &&
          description == o.description &&
          sandbox == o.sandbox &&
          subscribed_events == o.subscribed_events &&
          secret_key == o.secret_key &&
          scopes == o.scopes &&
          workspaces == o.workspaces &&
          auto_retry == o.auto_retry &&
          enabled == o.enabled &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, endpoint, description, sandbox, subscribed_events, secret_key, scopes, workspaces, auto_retry, enabled, created_at, updated_at].hash
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
