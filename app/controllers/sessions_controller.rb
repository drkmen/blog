class SessionsController < ApplicationController

  attr_accessor :current_user

  def create
    author = Author.where(:name => auth_hash['info']['name'], :url => auth_hash['info']['urls']['Vkontakte']).first_or_create
    author.update_attributes(:remote_image_url => auth_hash['info']['image'])
    # self.current_user = @author
    session[:user_id] = author.id
    cookies[:blog_user_id] = author.id
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end