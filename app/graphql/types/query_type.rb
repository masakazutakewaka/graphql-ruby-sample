module Types
  class QueryType < BaseObject
    graphql_name 'Query'

    field :allLinks, [Types::LinkType], resolver: Resolvers::SearchLinks
  end
end
