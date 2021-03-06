Blog.PostsIndexRoute = Ember.Route.extend(

  model: ()->
    @store.find('post', {last: 5})

  setupController: (controller, model)->
    searchVal = controller.get('searchVal')
    if(!searchVal)
      controller.set('model', model)
    else
      @store.find('post', {search: searchVal}).then (posts)=>
        controller.set('model', posts)
    controller.set('searchVal', null)
    controller.set('availablePosts', true)
    searchVal = null

)