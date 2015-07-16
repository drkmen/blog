Blog.PostsShowView = Blog.AnimatedView.extend(

  didInsertElement: ->
    $('pre code').each((i, block) ->
      hljs.highlightBlock block
    )

)

