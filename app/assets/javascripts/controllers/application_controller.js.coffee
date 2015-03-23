Blog.ApplicationController = Ember.ObjectController.extend(

  showMenuVisible: false
  showMenu: (()->
    console.log('property changed')
    console.log(@)
  ).observes('showMenuVisible')

  actions:
    showAsideMenu: ()->
      console.log('showMenuVisible true')
      @set('showMenuVisible', true)
    hideaAsideMenu: ()->
      console.log('showMenuVisible false')
      @set('showMenuVisible', false)

)