require 'rails_helper'

RSpec.describe PostsController, :type => :controller do

  before do
    10.times { FactoryGirl.create(:post) }
  end

  describe 'GET #index' do
    subject { get :index, format: :json }

    it_behaves_like 'success responses'

    it 'should have valid json' do
      json = JSON.parse(subject.body)['posts']
      expect(json).to be_an_instance_of(Array)
      expect(json.size).to be 10

      exp = json.first

      expect(exp).to have_key('id')
      expect(exp).to have_key('title')
      expect(exp).to have_key('image_path')
      expect(exp).to have_key('body')
      expect(exp).to have_key('tags')
      expect(exp).to have_key('created_at')
      expect(exp).to have_key('updated_at')
      expect(exp).to have_key('comments')
      expect(exp).to have_key('friendly_id')
      expect(exp).to have_key('description')
      expect(exp).to have_key('google_desc')
    end

  end

end