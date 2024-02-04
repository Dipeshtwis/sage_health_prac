# frozen_string_literal: true

module Types
  class PhoneNumberType < Types::BaseObject
    field :id, ID, null: false
    field :number, String, null: false
    field :phone_type, String
    field :language, String
    field :comment, String
    field :used_in_app, Boolean
    field :people_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
