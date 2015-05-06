Blog.ExperienceChartView = Ember.View.extend(

  elements: null

  initExpChart: ()->

    @elements.then =>
      @elements.map((div)->
        $('.charts').append('<div style="width:'+ div.yearsInt +'; backgroud: #4CC0C1"></div>')
      )


  didInsertElement: ->
    @initExpChart()

  rectColor: (->
    ['#4CC0C1', '#FB6D5D', '#FFC300']
  ).property()

)

