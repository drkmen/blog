class AuthorsController < ApplicationController

  respond_to :json

  def index
    respond_with Author.find_by(:name => params[:name])
  end

end