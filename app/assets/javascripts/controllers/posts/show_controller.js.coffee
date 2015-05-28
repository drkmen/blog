Blog.PostsShowController = Ember.ObjectController.extend(

  needs: ['application']
  currentUserBinding: 'controllers.application.currentUser'

  relatedPosts: (()->
    @store.find('post', {tags: @model.get('tagsArray')})
  ).property('model')

  errors: {
    author: []
    comment:
      errors: []
  }

  startedBodyValue: ''
  startedNameValue: ''

  init: ->
    @set('startedBodyValue', @get('comment-body'))
    @set('startedNameValue', @get('name'))

  # observer for comment body validation
  commentBodyLength: (->
    body = @get('comment-body')
    if body && body.length > 500
      @set('errors.comment.errors', {body: 'is too long (maximum is 500 characters)'})
    else if !body && body != @get('startedBodyValue')
      @set('errors.comment.errors', {body: "can't be blank"})
    else if body && body.length < 2
      @set('errors.comment.errors', {body: 'is too shor (minimum is 2 characters)'})
    else
      @set('errors.comment.errors', null)
  ).observes('comment-body')

  # observer for author name validation
  authorNameLength: (->
    name = @get('name')
    if name && name.length > 50
      @set('errors.author.errors', {name: 'is too long (maximum is 50 characters)'})
    else if name && name.length < 2
      @set('errors.author.errors', {name: 'is too shor (minimum is 2 characters)'})
    else if !name && name != @get('startedNameValue')
      @set('errors.author.errors', {name: "can't be blank"})
    else
      @set('errors.author.errors', null)
  ).observes('name')

  actions: {
    create_comment: ->
      self = @

      # do not go ahead if any errors on form or values is empty
      if @get('errors.comment.errors') || @get('errors.author.errors') || !@get('comment-body')# || !@get('name')
        return false

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

      $('textarea').val('')
      $('.for-name-input input').val('')
  }

)