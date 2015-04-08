Blog.ExperienceChartView = Ember.View.extend(

  initExpChart: ()->
    $(@element).highcharts(
      chart:
        height: 250,
        type: 'area'
      title:
        text: '<h3>Experience / Education</h3>'
      xAxis:
        allowDecimals: false
        labels:
          formatter: ->
            @value
    # clean, unformatted number for year
      yAxis:
        labels:
          enabled: false
        title:
          text: null
      tooltip:
        pointFormat: '{series.name}'
      plotOptions: area:
        pointStart: 2006
        marker:
          enabled: false
          symbol: 'circle'
          radius: 1
          states:
            hover:
              enabled: true
      series: [
        {
          name: 'ZEK ZNTY'
          data: [null, 1, 1, 1, 1, 1]
        }
        {
          name: 'ZNTY'
          data: [null, null, null, null, null, 1, 1, 1, 1]
        }
        {
          name: 'FaceIT'
          data: [null, null, null, null, null, null, null, 1, 1, 1]
        }
      ]
    )

  didInsertElement: ->
    console.log $('#experience')
    @initExpChart()


#  experience_chart: (->
#    '<div id="experience" style="min-width: 310px; height: 400px; margin: 0 auto"></div>'
#  ).property()


)

