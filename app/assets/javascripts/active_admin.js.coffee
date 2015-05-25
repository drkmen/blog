#= require active_admin/base

# ckeditor fix styles
$(document).ready ->
  if $('#ckeditor').length
    CKEDITOR.replace 'ckeditor'
  if $('#ckeditor').prev('label').length
    $('#ckeditor').prev('label').css 'float', 'none'