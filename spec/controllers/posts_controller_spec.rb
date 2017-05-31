require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before :all do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
    10.times { FactoryGirl.create(:post) }
  end

  describe 'GET #index' do

    subject { get :index, format: :json } # used for shared examples

    it_behaves_like 'success responses'

    it 'should have valid json' do
      response = get :index, format: :json
      json = JSON.parse(response.body)['posts']

      expect(json).to be_an_instance_of(Array)
      expect(json.size).to be 10

      post = json.first

      expect(post).to have_key('id')
      expect(post).to have_key('title')
      expect(post).to have_key('image_path')
      expect(post).to have_key('body')
      expect(post).to have_key('tags')
      expect(post).to have_key('created_at')
      expect(post).to have_key('updated_at')
      expect(post).to have_key('comments')
      expect(post).to have_key('friendly_id')
      expect(post).to have_key('description')
      expect(post).to have_key('google_desc')
    end

    it 'should paginate' do
      response = get :index, last: 5, offset: 3, format: :json
      json = JSON.parse(response.body)['posts']
      expect(json.size).to be 5
      expect(json.first['id']).to be 7
      expect(json.last['id']).to be 3
    end

    it 'should return 3 last posts' do
      response = get :index, last: 3, format: :json
      json = JSON.parse(response.body)['posts']
      expect(json.size).to be 3
      expect(json.first['id']).to be 10
    end

    it 'should search' do
      post = FactoryGirl.build(:post, title: 'search')
      post.tag_list.add('test')
      post.save
      response = get :index, search: 'search', format: :json
      json = JSON.parse(response.body)['posts']
      expect(json.size).to be 1
    end

    it 'should be tagged' do
      response = get :index, tags: 'test', format: :json
      json = JSON.parse(response.body)['posts']
      expect(json.size).to be 1
    end

    it 'should be without current post in recommendations' do
      response = get :index, post_id: 1, format: :json
      json = JSON.parse(response.body)['posts']
      expect(json.size).to be 10
      ids = json.to_a.map { |post| post['id'] }
      expect(ids).to_not include 1
    end

    it 'should be ordered by DESC' do
      response = get :index, format: :json
      json = JSON.parse(response.body)['posts']
      ids = json.to_a.map { |post| post['id'] }
      expect(ids).to eq [11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    end
  end
end
