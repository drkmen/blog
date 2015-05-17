Blog.SearchRoute = Ember.Route.extend(
  model: (params)->
    $.getJSON('/search/' + params.query)
)