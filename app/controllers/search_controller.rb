class SearchController < ApplicationController

  respond_to :json

  def index
    respond_with Post.search_by_title(params[:query])
  end


end