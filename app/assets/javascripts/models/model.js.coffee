Blog.Post = DS.Model.extend
  title: DS.attr 'string'
  body: DS.attr 'string'
  image: DS.attr 'string'
  created_at: DS.attr 'date'
  updated_at: DS.attr 'date'