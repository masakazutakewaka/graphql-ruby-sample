module Types
  class VoteType < BaseObject
    graphql_name 'Vote'

    field :id, ID, null: false
    field :link, Types::LinkType, null: false
    field :user, Types::UserType, null: false
  end
end
