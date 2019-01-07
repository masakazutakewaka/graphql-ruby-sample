module Resolvers
  class SearchLinks < Base
    type [Types::LinkType], null: false

    argument :filter, Types::SearchFilterInput, required: false
    argument :first, Integer, required: false
    argument :skip, Integer, required: false

    def resolve(filter: nil, first: 10, skip: 0)
      links = Link.all
      if filter.present?
        links.merge!(Link.where("url like ?", "%#{filter.url}%")) if filter.url.present?
        links.merge!(Link.where("description like ?", "%#{filter.description}%")) if filter.description.present?
      end
      links.limit(first).offset(skip)
    end
  end
end
