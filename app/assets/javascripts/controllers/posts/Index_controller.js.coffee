Blog.PostsIndexController = Ember.ArrayController.extend(

  model: ''
  searchVal: null

  showArrowsTips: true

  actions:
    gotIt: ->
      $('.tips').animate {
        opacity: 0
      }, 400, =>
        @set('showArrowsTips', false)
      document.cookie = "blog_show_arrows_tips=false"
      ## blya ny pizdec
      $('.wrapper').css('z-index', 1)

)