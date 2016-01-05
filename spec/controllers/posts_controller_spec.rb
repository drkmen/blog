require 'rails_helper'

RSpec.describe PostsController, :type => :controller do

  before :all do
    Post.delete_all
    10.times { FactoryGirl.create(:post) }
  end

  describe 'GET #index' do

    subject { get :index, ({format: :json}).merge(params) }

    it_behaves_like 'success responses'

    it 'should have valid json' do
      let(:param) {}
      json = JSON.parse(subject.body)['posts']

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
      let(:param) { {last_num: 5, offset: 5} }
      json = JSON.parse(subject.body)['posts']
      expect(json.size).to be 5
      # .friendly
      #      .search_by_title_and_tag(params[:search])
      #      .last_num(params[:last])
      #      .offset(params[:offset])
      #      .tagged(params[:tags])
      #      .where.not(:id => params[:post_id])
      #      .preload(:comments)
      #      .preload(:tags)
      #      .order('created_at DESC')
    end

  end

end