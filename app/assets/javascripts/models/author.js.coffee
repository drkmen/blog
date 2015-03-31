Blog.Author = DS.Model.extend(
  name: DS.attr 'string'
  url: DS.attr 'string'
  image: DS.attr 'string'
  about: DS.attr 'string'

  posts: DS.hasMany 'posts'
  comments: DS.hasMany 'comments'

  PPbackground: (()->
    "background-image:url('" + @get("image") + "'); background-repeat: no-repeat;"
  ).property("image")

)