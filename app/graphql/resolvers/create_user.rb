module Resolvers
  class CreateUser < Base
    type Types::UserType, null: false

    argument :name, String, required: true
    argument :authProvider, Types::AuthProviderEmailInput, required: true

    def resolve(name: nil, auth_provider: nil)
      User.create!(
        name: name,
        email: auth_provider.email,
        password: auth_provider.password
      )
    end
  end
end
