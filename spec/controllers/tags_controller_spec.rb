require 'rails_helper'

RSpec.describe TagsController, type: :controller do
  before do
    ActsAsTaggableOn::Tag.create(name: 'Ruby')
    ActsAsTaggableOn::Tag.create(name: 'RubyOnRails')
    ActsAsTaggableOn::Tag.create(name: 'HTML')
  end

  describe 'GET #index' do
    subject { get :index, format: :json }

    it_behaves_like 'success responses'

    it 'should have valid json' do
      json = JSON.parse(subject.body)['tags']
      expect(json).to be_an_instance_of(Array)
      expect(json.size).to be 3

      exp = json.first

      expect(exp).to have_key('id')
      expect(exp).to have_key('name')
      expect(exp).to have_key('taggings_count')
    end
  end

  describe 'GET #show' do
    subject { get :show, id: 'Ruby', format: :json }

    it_behaves_like 'success responses'

    it 'should have valid json' do
      json = JSON.parse(subject.body)['tag']
      expect(json['name']).to eq 'Ruby'
    end
  end
end
