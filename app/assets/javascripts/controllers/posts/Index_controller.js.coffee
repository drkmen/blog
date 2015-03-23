Blog.PostsShowController = Ember.ArrayController.extend(

  PPbackground: (()->
    "background-image:url('" + @model.get("image") + "'); background-repeat: no-repeat;"
  ).property("model.image")


)