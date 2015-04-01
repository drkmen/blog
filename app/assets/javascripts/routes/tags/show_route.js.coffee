Blog.TagsShowRoute = Ember.Route.extend(

  model: (params)->
    @store.find('post', {tags: params.name})
  setupController: (controller, model, info)->
    controller.set('model', model)
    controller.set('tag', @store.find('tag', info.params['tags.show'].name))


)