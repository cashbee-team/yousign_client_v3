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
  class SignatureRequestStatus
    DRAFT = "draft".freeze
    ONGOING = "ongoing".freeze
    DONE = "done".freeze
    DELETED = "deleted".freeze
    EXPIRED = "expired".freeze
    CANCELED = "canceled".freeze
    APPROVAL = "approval".freeze
    REJECTED = "rejected".freeze
    DECLINED = "declined".freeze

    def self.all_vars
      @all_vars ||= [DRAFT, ONGOING, DONE, DELETED, EXPIRED, CANCELED, APPROVAL, REJECTED, DECLINED].freeze
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
      return value if SignatureRequestStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #SignatureRequestStatus"
    end
  end
end
