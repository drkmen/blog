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
    $(elem).css({top: '+=15px'}, 1)
    $(elem).css(opacity: 0.1)

  afterInsertAnimation: (elem)->
    $(elem).animate({
      opacity: 1,
    }, 400)
    $(elem).animate({top: '-=15px'}, 300)


)

