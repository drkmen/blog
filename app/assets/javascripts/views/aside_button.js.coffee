Blog.AsideButtonView = Ember.View.extend

  click: ->
    if @$().find('button').hasClass('active')
      @$().find('button').removeClass('active')
    else
      @$().find('button').addClass('active')

  mouseEnter: ()->
#    $(@element).addClass 'active'
#    $(@element).html('<i class="fa fa-bars fa-2x"></i>')


  mouseLeave: ()->
#    $(@element).html('<i class="fa fa-ellipsis-v fa-2x"></i>')