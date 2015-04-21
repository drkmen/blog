Blog.ExperienceChartView = Ember.View.extend(

  initExpChart: ()->
    $(@element).highcharts(
      chart:
        height: 250,
        type: 'area'
      title:
        text: null
      xAxis:
        gridLineWidth: 0,
        allowDecimals: false
        labels:
          formatter: ->
            @value # clean, unformatted number for year

      yAxis:
        gridLineWidth: 0,
        labels:
          enabled: false
        title:
          text: null
      tooltip:
        pointFormat: '{series.name}'
      plotOptions:
        area:
          marker:
            enabled: false
            symbol: 'circle'
            radius: 1
            states:
              hover:
                enabled: true
      series: [
        {
          pointStart: 2007
          name: 'ZEK ZNTY'
          data: [1, 1, 1, 1, 1]
          color: '#4CC0C1'
        }
        {
          pointStart: 2011
          name: 'ZNTY'
          data: [1, 1, 1]
          color: '#FFC300'
        }
        {
          pointStart: 2013
          name: 'FaceIT'
          data: [ -1, -1, -1]
          color: '#FB6B5B'
        }
      ]
    )

  didInsertElement: ->
    @initExpChart()

)

