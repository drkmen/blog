Blog.PostsShowController = Ember.ObjectController.extend(

  needs: ['application']
  currentUserBinding: 'controllers.application.currentUser'

  relatedPosts: (()->
    @store.find('post', {tags: @model.get('tagsArray')})
  ).property('model')

  errors: {
    author: []
    comment: []
  }

  actions: {
    create_comment: ->
      self = @
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
          @set('errors.author', null)
          comment = @store.createRecord('comment',
            body: @get('comment-body')
            post: @get('model')
            author: author
            author_id: author.id
          )
          comment.set("created_at", moment())
          comment.save().then ->
            self.set('errors.comment', null)
          , (errors)=>
            self.set('errors.comment', errors)
        , (errors)=>
          @set('errors.author', errors)

  }

)