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
          comment.save().save().then ->
#            console.log 'saved'
#          , ->
            #empty function
#            console.log comment.get('errors')
        , (errors)=>
          console.log errors
#          @set('errors.author.name', errors.name.message)
          @set('errors.author', errors)
          console.log @get('errors')
#          console.log errors
          #empty function

  }

)