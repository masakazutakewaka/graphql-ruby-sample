require 'rails_helper'

describe 'CreateUser' do
  subject { Resolvers::CreateUser.new(object: nil, context: nil).resolve(name: 'hoge', auth_provider: auth_provider) }

  let(:auth_provider) { double('AuthProviderEmailInput', email: 'hoge@com', password: 'hogehoge') }

  describe 'resolve' do
    its(:name){ is_expected.to eq 'hoge' }
    its(:email){ is_expected.to eq 'hoge@com' }
    its(:password){ is_expected.to eq 'hogehoge' }
  end
end
