Blog.AuthorShowRoute = Ember.Route.extend(

  model: (params)->
    @store.find('author', {name: params.name})

)