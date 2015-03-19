class PostsController < ApplicationController

  respond_to :json

  def index
    respond_with Post.last_num(params[:last])
  end

  def show
    respond_with Post.find(params[:id])
  end

end