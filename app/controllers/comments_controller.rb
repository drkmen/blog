class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render :json => comment, :root => true
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id, :author_id)
  end

end