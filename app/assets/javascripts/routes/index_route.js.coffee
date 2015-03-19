Blog.IndexRoute = Ember.Route.extend(
  model: ()->
    @store.find('post', @store.all('post').get('firstObject.id'))
)