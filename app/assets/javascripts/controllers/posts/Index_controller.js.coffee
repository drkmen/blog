Blog.PostsIndexController = Ember.ArrayController.extend(

  model: ''
  searchVal: null

  searchValObs: (->
    @get('searchVal')
  ).observes('searchVal').property()

)