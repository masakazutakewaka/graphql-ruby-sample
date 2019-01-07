module Types
  class MutationType < BaseObject
    graphql_name 'Mutation'

    field :createLink, resolver: Resolvers::CreateLink
    field :createUser, resolver: Resolvers::CreateUser
    field :createVote, resolver: Resolvers::CreateVote

    field :signinUser, resolver: Resolvers::SignInUser
  end
end
