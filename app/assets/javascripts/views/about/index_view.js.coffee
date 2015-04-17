Blog.AboutView = Ember.View.extend(

  anchorBinding: 'controller.anchor'

  didInsertElement: ->
    @scrollToAnc()

  scrollToAnc: ->
    $(window).scrollTop($(@anchor).offset().top - 100)

  ancObserver: (->
    @scrollToAnc()
  ).observes('anchor')


)