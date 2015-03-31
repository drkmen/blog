Blog.AuthorShowRoute = Ember.Route.extend(

  model: (params)->
    @store.find('author', params.name)

)