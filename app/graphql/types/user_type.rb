module Types
  class UserType < BaseObject
    graphql_name 'User'

    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :votes, [Types::VoteType], null: false
  end
end
