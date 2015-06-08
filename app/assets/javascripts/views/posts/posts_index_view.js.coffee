Blog.PostsIndexView = Blog.AnimatedView.extend(

  templateName: 'posts/index'
  posts: []
  currentPost: 0

  didInsertElement: ->
    @set('posts', $('.posts').find('.row'))

  willInsertElement: ->
    $(document).on('keyup', (e)=>
      if e.keyCode == 38
        @prevPost()
      else if e.keyCode == 40
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

