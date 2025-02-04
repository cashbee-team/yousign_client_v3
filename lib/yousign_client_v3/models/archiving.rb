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
  class Archiving
    ARCHIVE = "archive".freeze
    ARCHIVE_Y = "archive_y".freeze

    def self.all_vars
      @all_vars ||= [ARCHIVE, ARCHIVE_Y].freeze
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
      return value if Archiving.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #Archiving"
    end
  end
end
