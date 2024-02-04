# frozen_string_literal: true

module Types
  class PersonType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String
    field :middle_name, String
    field :last_name, String
    field :suffix, String
    field :preferred_name, String
    field :dob, GraphQL::Types::ISO8601Date
    field :gender, String
    field :ssn, String
    field :home_address_street, String
    field :home_address_city, String
    field :home_address_state, String
    field :home_address_zip, String
    field :home_address_comment, String
    field :mailing_address_street, String
    field :mailing_address_city, String
    field :mailing_address_state, String
    field :mailing_address_zip, String
    field :mailing_address_comment, String
    field :email, String
    field :email_comment, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
