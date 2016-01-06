class PostsController < ApplicationController

  respond_to :json, :html

  def index
    @posts = Post.friendly
                 .search_by_title_and_tag(params[:search])
                 .last_num(params[:last])
                 .offset(params[:offset])
                 .tagged(params[:tags])
                 .where.not(:id => params[:post_id])
                 .preload(:comments)
                 .preload(:tags)
                 .order('created_at DESC')
    respond_with @posts
  end

  def show
    @post = Post.friendly.preload(:comments).find(params[:id])
    respond_with @post
  end

end