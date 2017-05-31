class TagsController < ApplicationController
  respond_to :json

  def index
    respond_with ActsAsTaggableOn::Tag.all
  end

  def show
    respond_with ActsAsTaggableOn::Tag.find_by(name: params[:id])
  end
end
