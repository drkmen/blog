class PostsController < ApplicationController

  respond_to :json

  def index
    respond_with Post.friendly
                     .search_by_title_and_tag(params[:search])
                     .last_num(params[:last])
                     .tagged(params[:tags])
                     .where.not(:id => params[:post_id])
                     .preload(:author)
                     .preload(:comments)
                     .preload(:tags)
                     .order('created_at DESC')
  end

  def show
    respond_with Post.friendly.preload(:comments).find(params[:id])
  end

end