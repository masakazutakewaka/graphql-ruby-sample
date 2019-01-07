require 'rails_helper'

describe 'SearchLinks' do
  subject { Resolvers::SearchLinks.new(object: nil, context: nil).resolve(filter: filter) }

  let(:link) { create(:link) }
  let(:link2) { create(:link) }
  let(:filter) { double('SearchFilterInput', url: link.url, description: '') }

  describe 'resolve' do
    it 'should include filter word' do
      expect(subject.map(&:url)).to all(include(link.url))
    end
  end
end
