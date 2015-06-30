class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_cookies_for_crawlers

  def index
    render 'application/index'
  end

  def reload_sitemap
    SitemapGenerator::Interpreter.run(:config_file => (SitemapGenerator.app.root + 'config/sitemap.rb'), :verbose => false)
    SitemapGenerator::Sitemap.ping_search_engines
    redirect_to :back
  end

  def set_cookies_for_crawlers
    if request.env['HTTP_USER_AGENT'] =~ /Googlebot/
      cookies[:blog_show_cookie_tips] = false
      cookies[:blog_show_arrows_tips] = false
    end
  end

  ActiveAdmin::ResourceController.class_eval do
    def find_resource
      resource_class.is_a?(FriendlyId) ? scoped_collection.where(slug: params[:id]).first! : scoped_collection.where(id: params[:id]).first!
    end
  end

end

