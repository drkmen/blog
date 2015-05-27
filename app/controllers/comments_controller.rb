class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render :json => comment, :root => true
    else
      render :json => {errors: comment.errors}, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id, :author_id)
  end

end