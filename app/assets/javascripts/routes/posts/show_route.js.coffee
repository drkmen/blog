Blog.PostsShowRoute = Ember.Route.extend(

  model: (params)->
    @store.find('post', params.id)

)