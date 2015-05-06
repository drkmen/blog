Blog.AboutController = Ember.ObjectController.extend(

  anchor: 'html'

  education: (->
    @get('model.experiences').filterBy('study', true)
  ).property('model.experiences.@each.study')

  employment: (->
    @get('model.experiences').filterBy('study', false)
  ).property('model.experiences.@each.study')

)

