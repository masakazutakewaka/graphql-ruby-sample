module Resolvers
  class SignInUser < Base
    type Types::SignInPayload, null: false

    argument :authProvider, Types::AuthProviderEmailInput, required: true

    def resolve(auth_provider: nil)
      return if auth_provider.blank?

      user = User.find_by(email: auth_provider.email)
      return unless user || user.authenticate(auth_provider.password)

      crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
      token = crypt.encrypt_and_sign("user-id:#{ user.id }")
      context[:session][:token] = token

      OpenStruct.new({
        user: user,
        token: token
      })
    end
  end
end
