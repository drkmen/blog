Blog.AboutRoute = Ember.Route.extend(

  model: ->
    Ember.RSVP.hash = {
      projects: @store.find('project')
      skills: @store.find('skill')
      experiences: @store.find('experience')
    }

)