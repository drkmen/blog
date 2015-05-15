Blog.ApplicationController = Ember.ObjectController.extend(

  showMenuVisible: false
  needs: ['about']

  actions:

#    search: (str)->
#      $.getJSON('/search=' + str).success(data)->
#        @transitionToRoute('/search')

    goToLink: (item, anchor)->
      @get('controllers.about').set('anchor', anchor)
      @transitionToRoute(item)

    showAsideMenu: ()->
      $('#aside-menu').animate {
        left: '+=300'
      }, 400
      @set('showMenuVisible', true)
    hideaAsideMenu: ()->
      $('#aside-menu').animate {
        left: '-=300'
      }, 400
      @set('showMenuVisible', false)

)
