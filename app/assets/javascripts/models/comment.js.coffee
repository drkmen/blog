Blog.Comment = DS.Model.extend(
  body : DS.attr 'string'

  post: DS.belongsTo 'post'
  author: DS.belongsTo 'author'

)