Blog.PostsShowView = Blog.AnimatedView.extend(

  willInsertElement: ->
    @_super()

  didInsertElement: ->
    @_super()
    $('pre code').each((i, block) ->
      hljs.highlightBlock block
    )

)

