Blog.PostsShowController = Ember.ObjectController.extend(

  PPbackground: (()->
    "background-image:url('" + @model.get("image") + "'); background-repeat: no-repeat;"
  ).property("model.image")


)