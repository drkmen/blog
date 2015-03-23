Blog.AsideButtonView = Ember.View.extend
  parentView: Blog.AsideMenuView
  mouseEnter: ()->
    $(@element).html('<i class="fa fa-bars fa-2x"></i>')

  mouseLeave: ()->
    $(@element).html('<i class="fa fa-ellipsis-v fa-2x"></i>')

#  click: ()->
#    @send('showAsideMenu')
#    console.log(@get('_parentView._childViews.AsideMenuView'))
#    console.log(@get('parentView'))
#    @get('_parentView.AsideMenuView').set('isVisible', true)