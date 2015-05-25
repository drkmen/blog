Blog.AuthorShowRoute = Ember.Route.extend(

  model: (params)->
    @store.find('author', params.name)

  serialize: (model)->
    name: model.get('name')

)