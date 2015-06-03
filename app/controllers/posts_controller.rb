class PostsController < ApplicationController

  respond_to :json

  def index
    respond_with Post.friendly.order('created_at DESC')
                     .search_by_title_and_tag(params[:search])
                     .last_num(params[:last])
                     .tagged(params[:tags])
                     .where.not(:id => params[:post_id]) # if params[:post_id]


  end

  def show
    respond_with Post.friendly.find(params[:id])
  end

end