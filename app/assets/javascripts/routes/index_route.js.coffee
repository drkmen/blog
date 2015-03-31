Blog.IndexRoute = Ember.Route.extend(
  model: ()->
    @store.find('post', @store.all('post').sortBy('created_at').get('lastObject.id'))
)