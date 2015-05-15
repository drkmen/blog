class PostsController < ApplicationController

  respond_to :json

  def index
    respond_with Post.friendly.last_num(params[:last]).tagged(params[:tags])
  end

  def show
    respond_with Post.friendly.find(params[:id])
  end

end