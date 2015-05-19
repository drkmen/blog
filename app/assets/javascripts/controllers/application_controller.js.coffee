Blog.ApplicationController = Ember.ObjectController.extend(

  showMenuVisible: false
  needs: ['about', 'postsIndex']

  actions:
    submit: ->
      $('form').submit()

    search: ->
      @get('controllers.postsIndex').set('searchVal', @get('search'))
      if(@get('currentPath') == 'posts.index')
        @store.find('post', {search: @get('search')}).then (posts)=>
          @get('controllers.postsIndex').set('model', posts)
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
