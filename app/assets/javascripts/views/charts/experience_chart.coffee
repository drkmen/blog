Blog.ExperienceChartView = Ember.View.extend(

  initExpChart: ()->
#    drawingCanvas = document.getElementById('experience-chart')
##    console.log drawingCanvas
##    console.log @element.getElementById('experience')
##    console.log drawingCanvas.getContext
#    if drawingCanvas and drawingCanvas.getContext
#      context = drawingCanvas.getContext('2d')
#
#      x = 0
#      y = 0
#
#      # x axis
##      context.lineWidth = 0.5;
#      context.beginPath();
#      context.moveTo(0, 40);
#      context.lineTo(240, 40);
#
#      context.strokeStyle = "#000";
#      context.stroke();
#
#      context.fillStyle = '#4CC0C1'
#      context.fillRect(10, y, 200, 30)
#
#      context.fillStyle = '#FB6D5D'
#      context.fillRect(50, y, 200, 30)
#
#      context.fillStyle = '#FFC300'
#      context.fillRect(100, y, 200, 30)
#


  didInsertElement: ->
    @initExpChart()

)

