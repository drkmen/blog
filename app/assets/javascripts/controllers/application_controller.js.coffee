Blog.ApplicationController = Ember.ObjectController.extend(

  showMenuVisible: false
  needs: ['about']

  actions:

    search: (str) ->
      str = @get('search')
      @transitionToRoute('search', {query: str})
#      $.getJSON('/search/' + str).success ()=>


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
