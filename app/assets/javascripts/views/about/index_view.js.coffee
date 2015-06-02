Blog.AboutView = Ember.View.extend(

  anchorBinding: 'controller.anchor'

  didInsertElement: ->
    @scrollToAnc()

  scrollToAnc: ->
    $('html, body').animate({
      scrollTop: $(@anchor).offset().top - 100
    }, 500, 'swing')

  ancObserver: (->
    @scrollToAnc()
  ).observes('anchor')


)