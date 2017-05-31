require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe 'POST #create' do
    let(:author) { FactoryGirl.create(:author) }
    let(:article) { FactoryGirl.create(:post) }

    describe 'success' do
      let(:payload) do
        { comment: { body: 'Body', post_id: article.id, author_id: author.id } }
      end
      subject { post :create, payload, format: :json }

      it_behaves_like 'success responses'

      it 'should create new comment' do
        subject
        comment = Comment.exists?(body: payload[:comment][:body],
                                  post_id: payload[:comment][:post_id],
                                  author_id: payload[:comment][:author_id])
        expect(comment).to be true
      end

      it 'should have valid json' do
        json = JSON.parse(subject.body)['comment']
        expect(json).to have_key('id')
        expect(json).to have_key('body')
        expect(json).to have_key('created_at')
        expect(json).to have_key('updated_at')
        expect(json).to have_key('author_id')
        expect(json).to have_key('post_id')
      end
    end

    describe 'failed' do
      let(:payload) { { comment: { body: '', post_id: '', author_id: '' } } }
      subject { post :create, payload, format: :json }

      it_behaves_like 'failed responses'

      it 'should return error' do
        json = JSON.parse(subject.body)['errors']
        expect(json['author'][0]).to eq "can't be blank"
        expect(json['body']).to be_an_instance_of(Array)
        expect(json['body'][0]).to eq "can't be blank"
        expect(json['body'][1]).to eq 'is too short (minimum is 2 characters)'
      end
    end
  end
end
