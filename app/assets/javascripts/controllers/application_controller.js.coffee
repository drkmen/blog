Blog.ApplicationController = Ember.ObjectController.extend(

  showMenuVisible: false
  needs: ['about', 'postsIndex']

  actions:
    search: ->
      @get('controllers.postsIndex').set('searchVal', @get('search'))
      if(@get('currentPath') == 'posts.index')
        $.getJSON('/search/' + @get('search')).success (responce)=>
          @get('controllers.postsIndex').set('model', responce.search)
      else
        @transitionToRoute('posts.index')


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
