Blog.PostsIndexController = Ember.ArrayController.extend(

  model: ''
  searchVal: null
  availablePosts: true

  showArrowsTips: true

  actions:
    loadMore: ->
      @store.find('post', {offset: @model.content.length, last: 5}).then (new_post)=>
        # hide button if there is not any posts
        if new_post.content.length < 5
          @set('availablePosts', false)
        @model.addObjects(new_post)

    gotIt: ->
      $('.tips').animate {
        opacity: 0
      }, 400, =>
        @set('showArrowsTips', false)
      document.cookie = "blog_show_arrows_tips=false"
      ## blya ny pizdec
      $('.wrapper').css('z-index', 1)

)