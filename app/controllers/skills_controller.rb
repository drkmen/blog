class SkillsController < ApplicationController

  respond_to :json

  def index
    respond_with Skill.all
  end

end