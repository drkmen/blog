class SessionsController < ApplicationController
  attr_accessor :current_user

  def create
    case auth_hash[:provider]
    when 'vkontakte'
      author = Author.where(name: auth_hash['info']['name'], url: auth_hash['info']['urls']['Vkontakte']).first_or_create
      author.update_attributes(remote_image_url: auth_hash['info']['image'])
    when 'twitter'
      author = Author.where(name: auth_hash['info']['nickname'], url: auth_hash['info']['urls']['Twitter']).first_or_create
      author.update_attributes(remote_image_url: auth_hash['info']['image'])
    when 'gplus'
      author = Author.where(name: auth_hash['info']['name'], url: auth_hash['info']['urls']['Google+']).first_or_create
      author.update_attributes(remote_image_url: auth_hash['info']['image'])
    when 'facebook'
      author = Author.where(name: auth_hash['info']['name'], url: auth_hash['info']['urls']['Facebook']).first_or_create
      author.update_attributes(remote_image_url: auth_hash['info']['image'])
    else
      raise "Unknown provider - #{auth_hash[:provider]}", ArgumentError
    end

    session[:user_id] = author.id
    cookies[:blog_user_id] = author.id
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
