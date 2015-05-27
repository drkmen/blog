class AuthorsController < ApplicationController

  respond_to :json

  def show
    respond_with Author.find(params[:id])
  end

  def create
    author = Author.where(:name => params[:author][:name]).first_or_create
    if author.save
      respond_with author
    else
      render :json => {errors: author.errors}, status: :unprocessable_entity
    end
  end

  private

  def author_params
    params.require(:author).permit(:name, :image_path)
  end

end