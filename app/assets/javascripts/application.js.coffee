#= require jquery
#= require jquery_ujs
#= require ember
#= require ember-data
#= require moment
#= require_self
#= require blog

# for more details see: http://emberjs.com/guides/application/
window.Blog = Ember.Application.create()

# document ready
#$ ()->
#  $('.open-menu-button').on('hover', ()->
#    console.log '123'
#    @html('<i class="fa fa-bars"></i>')
#  )
#  console.log($('.open-menu-button').length)
#  $('body').on('click', '.open-menu-button', (e)->
#    console.log '123'
#    el.html('<i class="fa fa-bars"></i>')
#  )