Blog.AsideButtonView = Ember.View.extend

  click: ->
    if @$().find('button').hasClass('active')
      @$().find('button').removeClass('active')
    else
      @$().find('button').addClass('active')