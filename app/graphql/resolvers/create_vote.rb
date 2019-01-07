module Resolvers
  class CreateVote < Base
    type Types::VoteType, null: false

    argument :linkId, ID, required: true

    def resolve(link_id: nil)
      Vote.create!(
        link: Link.find(link_id),
        user: context[:current_user]
      )
    end
  end
end
