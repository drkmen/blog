# For more information see: http://emberjs.com/guides/routing/

Blog.Router.map ()->
  @resource('posts', ->
    @route('show', {path: '/:id'})
  )
  @resource('author', ->
    @route('show', {path: '/:name'})
  )
  @route('about')

