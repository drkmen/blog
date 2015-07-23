Blog.PostsIndexView = Blog.AnimatedView.extend(

  templateName: 'posts/index'
  posts: []
  currentPost: 0

  didInsertElement: ->
    @_super()
    @set('posts', $('.posts').find('.row'))

  willInsertElement: ->
    @_super()
    $(document).on('keydown', (e)=>
      if e.keyCode == 38
        e.preventDefault()
        e.stopPropagation()
        @prevPost()
      else if e.keyCode == 40
        e.preventDefault()
        e.stopPropagation()
        @nextPost()
    )

  nextPost: ->
    if @get('currentPost') < @get('posts').length - 1
      @set('currentPost', @get('currentPost') + 1)
      $('html, body').animate({
        scrollTop: $(@get('posts')).eq(@get('currentPost')).offset().top - 40
      }, 500, 'swing')


  prevPost: ->
    if @get('currentPost') > 0
      @set('currentPost', @get('currentPost') - 1)
      $('html, body').animate({
        scrollTop: $(@get('posts')).eq(@get('currentPost')).offset().top - 40
      }, 500, 'swing')


)

