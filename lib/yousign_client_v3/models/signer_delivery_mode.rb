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
  class SignerDeliveryMode
    EMAIL = "email".freeze
    NONE = "none".freeze

    def self.all_vars
      @all_vars ||= [EMAIL, NONE].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if SignerDeliveryMode.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #SignerDeliveryMode"
    end
  end
end
