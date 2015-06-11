# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.example.com"

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
  add "http://drkmen.com"
  add "http://drkmen.com/#!/about"
  add "http://drkmen.com/#!/posts"
  add "http://drkmen.com/#!/tags"
  add "http://drkmen.com/#!/author"

  Post.find_each do |post|
    add "http://drkmen.com/#!/posts/#{post.friendly_id}", :lastmod => post.updated_at, :changefreq => 'daily'
  end

  ActsAsTaggableOn::Tag.find_each do |tag|
    add "http://drkmen.com/#!/tags/#{tag.name}"
  end

  Author.find_each do |author|
    add "http://drkmen.com/#!/author/#{author.name}"
  end

end
