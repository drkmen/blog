Blog.PostsShowController = Ember.ObjectController.extend(

  needs: ['application']
  currentUserBinding: 'controllers.application.currentUser'

  relatedPosts: (()->
    @store.find('post', {tags: @model.get('tagsArray')})
  ).property('model')

  actions: {
    create_comment: ->
      if @get('currentUser')
        comment = @store.createRecord('comment',
          body: @get('comment-body')
          post: @get('model')
        )
        comment.set("author", @get('currentUser'))
        comment.set("created_at", moment())
        comment.save()
      else
        author = @store.createRecord('author',
          name: @get('name')
        )
        author.save().then (author)=>
          comment = @store.createRecord('comment',
            body: @get('comment-body')
            post: @get('model')
            author: author
            author_id: author.id

          )
          comment.set("created_at", moment())
          comment.save()

  }

)