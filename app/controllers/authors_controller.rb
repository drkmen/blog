class AuthorsController < ApplicationController

  respond_to :json

  def show
    # author name in params[:id]. dada, genius
    respond_with Author.find_by(name: params[:id])
  end

end