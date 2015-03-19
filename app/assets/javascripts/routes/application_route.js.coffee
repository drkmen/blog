Blog.ApplicationRoute = Ember.Route.extend(
  model: ()->
    @store.find('post', {last: 5})
)