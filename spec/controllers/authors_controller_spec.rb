require 'rails_helper'

RSpec.shared_examples 'authors json' do
  it 'returns valid json' do
    json = JSON.parse(subject.body)['author']
    expect(json).to have_key('id')
    expect(json).to have_key('name')
    expect(json).to have_key('about')
    expect(json).to have_key('image_path')
  end
end

RSpec.describe AuthorsController, type: :controller do
  let(:author) { FactoryGirl.create(:author) }

  describe 'GET #show' do
    subject { get :show, id: author.id, format: :json }

    it_behaves_like 'success responses'
    it_behaves_like 'authors json'
  end

  describe 'POST #create' do

    describe 'success' do
      let(:payload) { { author: { name: 'Bob' } } }
      subject { post :create, payload, format: :json }

      it_behaves_like 'success responses'
      it_behaves_like 'authors json'

      it 'should create new user' do
        subject
        expect(Author.exists?(name: payload[:author][:name])).to be true
      end
    end

    describe 'failed' do
      let(:payload) { { author: { name: '' } } }
      subject { post :create, payload, format: :json }

      it_behaves_like 'failed responses'

      it 'should return error' do
        json = JSON.parse(subject.body)['errors']
        expect(json['name']).to be_an_instance_of(Array)
        expect(json['name'][0]).to eq "can't be blank"
        expect(json['name'][1]).to eq 'is too short (minimum is 2 characters)'
      end
    end
  end
end
