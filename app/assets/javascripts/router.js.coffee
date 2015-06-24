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

Blog.Router.reopen(
  location: 'hashbang'
)

#Blog.Router.reopen(
#  notifyGoogleAnalytics: (->
#    ga 'send', 'pageview',
#      'page': @get('url')
#      'title': @get('url')
#  ).on('didTransition')
#)