Blog.PostsShowController = Ember.ObjectController.extend(

  needs: ['application']
  currentUserBinding: 'controllers.application.currentUser'

  relatedPosts: (()->
    @store.find('post', {tags: @model.get('tagsArray')})
  ).property('model')

  actions: {
    create_comment: ->
      comment = @store.createRecord('comment',
        body: @get('comment-body')
        post: @get('model')
      )
      comment.set("created_at", Date())
      comment.save()
  }

)