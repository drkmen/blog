class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_variants

  def index
    respond_to do |format|
      format.html do |html|
        html.desctop # renders app/views/projects/show.html+tablet.erb
        html.phone { redirect_to posts_path }
      end
    end
  end

  def reload_sitemap
    SitemapGenerator::Interpreter.run(:config_file => (SitemapGenerator.app.root + 'config/sitemap.rb'), :verbose => false)
    SitemapGenerator::Sitemap.ping_search_engines
    redirect_to :back
  end

  ActiveAdmin::ResourceController.class_eval do
    def find_resource
      resource_class.is_a?(FriendlyId) ? collection.where(slug: params[:id]).first! : collection.where(id: params[:id]).first!
    end
  end

  private

  def set_variants
    request.variant = :phone if request.user_agent =~ /iphone|android|ipod|ipad/i
  end

end

