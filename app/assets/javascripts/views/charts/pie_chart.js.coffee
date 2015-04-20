Blog.PieChartView = Ember.View.extend(

  classNames: ['easypiechart', 'color']
  attributeBindings: ['data-percent', 'data-line-width', 'data-track-Color', 'data-bar-color', 'data-scale-color', 'data-size', 'data-animate']

  name: ''

  'data-line-width': 6
  'data-track-Color': '#f0f0f0'
  'data-scale-color': 'false'
  'data-percent': 0
  'data-size': 130
  'data-animate': 2000
  'data-bar-color': (->
    @setColor()
  ).property()

  initChart: ()->
    $(@element).easyPieChart()


  didInsertElement: ->
    @initChart()

  setColor: ->
    switch @get('name')
      when 'Ruby', 'RubyOnRails'
        '#FB6B5B'
      when 'HTML'
        '#dadc00'
      when 'CSS', 'Sass/Scss'
        '#4CC0C1'
      when 'JS/Coffee', 'jQuery/Ajax'
        '#ffc300'
      when 'Ember.js'
        '#ff7d00'
      else
        '#8EC165'


)

