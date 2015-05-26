Blog.Comment = DS.Model.extend(
  body : DS.attr 'string'
  created_at: DS.attr 'date'

  post: DS.belongsTo 'post'
  author: DS.belongsTo 'author', {async: true}

)