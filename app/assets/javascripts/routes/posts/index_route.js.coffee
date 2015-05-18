Blog.PostsIndexRoute = Ember.Route.extend(

  model: ()->
    @store.find('post')

  setupController: (controller, model)->
    searchVal = controller.get('searchValObs')
    if(!searchVal)
      controller.set('model', model)
    else
      console.log 'search'
      $.getJSON('/search/' + searchVal).success (responce)=>
        controller.set('model', responce.search)
    controller.set('searchVal', null)
    searchVal = null

)