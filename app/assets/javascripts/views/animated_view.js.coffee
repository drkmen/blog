Blog.AnimatedView = Ember.View.extend(

  willInsertElement: ->
    @$().css({opacity: 0})

  didInsertElement: ->
    @$().animate({opacity: 1}, 1000)

  manualAnimate: (->
    @willInsertElement()
    @didInsertElement()
  ).observes('controller.model')

)

