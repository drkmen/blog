require 'rails_helper'

RSpec.describe AuthorsController, :type => :controller do

  let(:author) { FactoryGirl.create(:author) }

  describe 'GET #show' do

    subject { get :show, id: author.name, format: :json }

    it { is_expected.to be_success }
    it { is_expected.to have_http_status(200) }

    it 'respond with json' do
      expect(subject.header['Content-Type']).to include 'application/json'
    end

    describe 'when posts are given' do
      let!(:posts)  { Array.new(2) { FactoryGirl.create(:post, author: author) }  }

      subject { JSON.parse(get(:show, id: author.name, format: :json).body)['author'] }
      it 'loads author' do
        p subject
        expect(subject['id']).to_not be_nil
        expect(subject['name']).to_not be_nil
        expect(subject['about']).to_not be_nil
        expect(subject['url']).to_not be_nil
        expect(subject['image_path']).to_not be_nil
        expect(subject['posts']).to_not be_empty
      end
    end



  end

end

# class AuthorsController < ApplicationController
#
#   respond_to :json
#
#   def show
#     respond_with Author.find_by(name: params[:id])
#   end
#
#   def create
#     author = Author.where(:name => params[:author][:name]).first_or_create
#     if author.save
#       respond_with author
#     else
#       render :json => {errors: author.errors}, status: :unprocessable_entity
#     end
#   end
#
#   private
#
#   def author_params
#     params.require(:author).permit(:name, :image_path)
#   end
#
# end