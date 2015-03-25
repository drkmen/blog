Blog.PostsShowController = Ember.ObjectController.extend(
  relatedPosts: (()->
    @store.find('post', {tags: @model.get('tagsArray')})
  ).property('model')
)