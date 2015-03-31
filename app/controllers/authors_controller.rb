class AuthorsController < ApplicationController

  respond_to :json

  def index
    respond_with Author.find_by(name: params[:name])
  end

  def show
    # author name in params[:id]. dada, genius
    respond_with Author.find_by(name: params[:id])
  end

end