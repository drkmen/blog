class AuthorsController < ApplicationController

  def show
    render json: Author.find(params[:id])
  end

  def create
    author = Author.where(:name => params[:author][:name]).first_or_create
    if author.save
      render json: author
    else
      render json: {errors: author.errors}, status: :unprocessable_entity
    end
  end

  private

  def author_params
    params.require(:author).permit(:name, :image_path)
  end

end