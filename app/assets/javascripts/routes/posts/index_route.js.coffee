Blog.PostsIndexRoute = Ember.Route.extend(

  model: ()->
    @store.find('post').then (posts)->
      posts = posts.sortBy('id').reverse()
      posts

  setupController: (controller, model)->
    searchVal = controller.get('searchVal')
    if(!searchVal)
      controller.set('model', model)
    else
      @store.find('post', {search: searchVal}).then (posts)=>
        controller.set('model', posts)
    controller.set('searchVal', null)
    searchVal = null

)