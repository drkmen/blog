#= require active_admin/base
#= require ckeditor/init
#= require ckeditor/plugins/codesnippet/lib/highlight/highlight.pack
# ckeditor fix styles

hljs.initHighlightingOnLoad();

$(document).ready ->
  if $('#ckeditor').length
    CKEDITOR.replace 'ckeditor'
  if $('#ckeditor').prev('label').length
    $('#ckeditor').prev('label').css 'float', 'none'