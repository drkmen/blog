Blog.TagsRoute = Ember.Route.extend(

  model: ()->
    @store.find('tag')

)