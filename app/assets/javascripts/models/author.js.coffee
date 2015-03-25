Blog.Author = DS.Model.extend(
  name: DS.attr 'string'
  url: DS.attr 'string'
  image: DS.attr 'string'

  posts: DS.hasMany 'posts'

)