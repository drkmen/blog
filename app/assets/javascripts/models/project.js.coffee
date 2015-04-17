Blog.Project = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  link: DS.attr 'string'
  image_path: DS.attr 'string'
  created_at: DS.attr 'date'
  updated_at: DS.attr 'date'

  tags: DS.hasMany 'tags'
#  comments: DS.hasMany 'comments'
#  author: DS.belongsTo 'author'

  PPbackground: (()->
    "background-image:url('" + @get("image_path") + "'); background-repeat: no-repeat;"
  ).property("image_path")

  tagsArray: (()->
    @get('tags').map (tag)->
      ' ' + tag.get('name')
  ).property('tags')