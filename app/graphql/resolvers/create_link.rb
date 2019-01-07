module Resolvers
  class CreateLink < Base
    type Types::LinkType, null:false

    argument :description, String, required: true
    argument :url, String, required: true

    def resolve(description: nil, url: nil)
      Link.create!(
        description: description,
        url: url,
        user: context[:current_user]
      )
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input : #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
