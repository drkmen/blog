# For more information see: http://emberjs.com/guides/routing/

Blog.Router.map ()->
  @resource('posts', ->
    @route('show', {path: '/:friendly_id'})
  )
  @resource('author', ->
    @route('show', {path: '/:name'})
  )
  @resource('tags', ->
    @route('show', {path: '/:name'})
  )
  @route('about')
  @route('search', {path: 'search/:query'})

