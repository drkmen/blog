Blog.PostsIndexController = Ember.ArrayController.extend(

  model: ''
  searchVal: null
  availablePosts: true

  actions:
    loadMore: ->
      NProgress.start()
      $('span.load-more').html('<i class="fa fa-spinner fa-spin fa-2x"></i>')
      @store.find('post', {offset: @model.content.length, last: 5}).then (new_post)=>
        # hide button if there is not any posts
        if new_post.content.length < 5
          @set('availablePosts', false)
        @model.addObjects(new_post)
        $('span.load-more').html('Load more')
        NProgress.done()

)