Blog.AnimatedView = Ember.View.extend(

  willInsertElement: ->
    @beforeInsertAnimation(@element)

  didInsertElement: ->
    @afterInsertAnimation(@element)

  manualAnimate: (->
    @beforeInsertAnimation(@element)
    @afterInsertAnimation(@element)
  ).observes('controller.model')

  beforeInsertAnimation: (elem)->
    $(elem).children().css(top: '15px')
    $(elem).css(opacity: 0.1)

  afterInsertAnimation: (elem)->
    $(elem).animate({
      opacity: 1,
    }, 400)
    $(elem).children().animate({top: '-=15px'}, 300)


)

