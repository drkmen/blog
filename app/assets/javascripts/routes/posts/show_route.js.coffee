Blog.PostsShowRoute = Ember.Route.extend(

  model: (params)->
    @store.find('post', params.friendly_id)

  serialize: (model)->
    friendly_id: model.get('friendly_id')

)