module Types
  class SearchFilterInput < BaseInputObject
    graphql_name 'SEARCH_FILTER'

    argument :url, String, required: false
    argument :description, String, required: false
  end
end
