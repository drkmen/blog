Blog.ApplicationController = Ember.ObjectController.extend(

  showMenuVisible: false
  showMenu: (()->
    console.log('property changed')
    console.log(@)
  ).observes('showMenuVisible')


  actions:
    showAsideMenu: ()->
      console.log('showMenuVisible true')
#      $('#aside-menu').css('left', '300px')
      $('#aside-menu').animate {
        left: '+=300'
      }, 800 #, ->
        # Animation complete.
      @set('showMenuVisible', true)
    hideaAsideMenu: ()->
      console.log('showMenuVisible false')
      $('#aside-menu').animate {
        left: '-=300'
      }, 800
      @set('showMenuVisible', false)

)