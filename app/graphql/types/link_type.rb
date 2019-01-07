module Types
  class LinkType < BaseObject
    graphql_name 'Link'

    field :id, ID, null: false
    field :url, String, null: false
    field :description, String, null: false
    field :postedBy, Types::UserType, null: false, hash_key: :user
    field :votes, [Types::VoteType], null: false
  end
end
