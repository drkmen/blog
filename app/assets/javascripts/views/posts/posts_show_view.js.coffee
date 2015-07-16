Blog.PostsShowView = Blog.AnimatedView.extend(

  willInsertElement: ->
    # in some reasone i should keep it. View comes with opacity 0 if remove this

  didInsertElement: ->
    $('pre code').each((i, block) ->
      hljs.highlightBlock block
    )

)

