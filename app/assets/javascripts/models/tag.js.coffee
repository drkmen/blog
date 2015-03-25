Blog.Tag = DS.Model.extend
  name: DS.attr 'string'
  taggings_count: DS.attr 'number'

  posts: DS.hasMany 'posts'