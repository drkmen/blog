Blog.AboutRoute = Ember.Route.extend(

  model: ->
    @store.find('project')

)