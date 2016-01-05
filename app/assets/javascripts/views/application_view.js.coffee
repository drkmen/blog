Blog.ApplicationView = Ember.View.extend(

  didInsertElement: ()->
    $('.aside-block').jScrollPane(
      mouseWheelSpeed: 100
    )

  click: (event)->
    unless document.getElementById("aside-menu").contains(event.target)
      @get('controller').set('showMenuVisible', false)
      $(".cmn-toggle-switch").removeClass('active')

)

