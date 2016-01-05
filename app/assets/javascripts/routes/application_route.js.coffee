Blog.ApplicationRoute = Ember.Route.extend(
  model: ()->
    @store.find('post', {last: 5})
)

Blog.LoadingRoute = Ember.Route.extend(

  activate: ->
    @_super()
    NProgress.start()

  deactivate: ->
    @_super()
    NProgress.done()

)