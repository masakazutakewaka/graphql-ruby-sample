require 'rails_helper'

describe 'SignInUser' do
  subject { Resolvers::SignInUser.new(object: nil, context: nil).resolve(auth_provider: auth_provider) }

  let(:auth_provider) { double('AuthProviderEmailInput', email: 'hoge@com', password: 'hogehoge') }

  describe 'resolve' do
    let!(:user) { User.create(name: 'hoge', email: 'hoge@com', password: 'hogehoge') }

    its(:token){ is_expected.not_to be_nil }
    its(:user){ is_expected.to eq user }
  end
end
