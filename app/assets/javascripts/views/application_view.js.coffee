Blog.ApplicationView = Blog.AnimatedView.extend(

  click: (event)->
    unless document.getElementById("aside-menu").contains(event.target)
      @get('controller').set('showMenuVisible', false)
      $(".cmn-toggle-switch").toggleClass('active')

)

