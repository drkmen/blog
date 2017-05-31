class ProjectsController < ApplicationController
  respond_to :json

  def index
    respond_with Project.all.order('id DESC')
  end
end
