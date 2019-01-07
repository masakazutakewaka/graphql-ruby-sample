require 'rails_helper'

describe 'CreateLink' do
  subject { Resolvers::CreateLink.new(object: nil, context: nil).resolve(description: 'test_description', url: 'test_url') }

  describe 'resolve' do
    its(:url){ is_expected.to eq 'test_url' }
    its(:description){ is_expected.to eq 'test_description' }
  end
end
