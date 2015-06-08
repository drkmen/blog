Blog.ApplicationController = Ember.ObjectController.extend(

  currentUser: null

  init: ->
    if @getCookie('blog_user_id')
      @set('currentUser', @store.find('author', @getCookie('blog_user_id')))
    if @getCookie('blog_show_cookie_tips')
      @set('showCookieTips', false)
    if @getCookie('blog_show_arrows_tips')
      @get('controllers.postsIndex').set('showArrowsTips', false)


  getCookie: (name) ->
    matches = document.cookie.match(new RegExp(
      "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
    ));
    if matches then decodeURIComponent(matches[1]) else undefined

  showMenuVisible: false
  showCookieTips: true
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

    toggleMenu: ->
      @toggleProperty('showMenuVisible')
      null

    cookieAgreed: ->
      $('.tips').animate {
        opacity: 0
      }, 400, =>
        @set('showCookieTips', false)
      document.cookie = "blog_show_cookie_tips=false"

  asideMenuToggle: (->
    if @get('showMenuVisible')
      $('#aside-menu').animate {
        left: '+=300'
      }, 400
    else
      $('#aside-menu').animate {
        left: '-=300'
      }, 400
  ).observes('showMenuVisible')

)
