# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://drkmen.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  add "/#!/about"
  add "/#!/posts"
  add "/#!/tags"
  add "/#!/author"

  Post.find_each do |post|
    add "/#!/posts/#{post.friendly_id}", :lastmod => post.updated_at, :changefreq => 'daily'
  end

  ActsAsTaggableOn::Tag.find_each do |tag|
    add "/#!/tags/#{tag.name}"
  end

  Author.where(:posts_author => true) do |author|
    add "/#!/author/#{author.name}"
  end

end
