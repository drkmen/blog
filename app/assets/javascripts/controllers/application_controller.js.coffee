Blog.ApplicationController = Ember.ObjectController.extend(

  showMenuVisible: false

  actions:
    showAsideMenu: ()->
      $('#aside-menu').animate {
        left: '+=300'
      }, 800
      @set('showMenuVisible', true)
    hideaAsideMenu: ()->
      $('#aside-menu').animate {
        left: '-=300'
      }, 800
      @set('showMenuVisible', false)

)