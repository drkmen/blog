#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
#= require ember
#= require ember-data
#= require moment
#= require nprogress
#= require ckeditor/plugins/codesnippet/lib/highlight/highlight.pack
#= require jquery.easy-pie-chart
#= require_self
#= require blog

hljs.initHighlightingOnLoad();

# for more details see: http://emberjs.com/guides/application/
window.Blog = Ember.Application.create()