Ember.Handlebars.helper "truncate", (string, str_size) ->
  if string.length > str_size
    string = string.substring(0, str_size) + "..."
  string

Ember.Handlebars.helper "date", (date) ->
  moment(date).format('DD.MM.YYYY');

Ember.Handlebars.helper "time", (date) ->
  moment(date).format('HH:mm');

Ember.Handlebars.helper "postInfoDate", (date) ->
  moment(date).format('dddd, DD MMMM YYYY');

Ember.Handlebars.helper "year", ->
  moment().format("YYYY");

Ember.Handlebars.helper 'my_old', () ->
  today = moment().format("YYYY");
  today - 1992

Ember.Handlebars.helper "vkShareButton", (title, description, image)->
  url = encodeURIComponent(window.location.href)
  encodedTitle = encodeURIComponent(title)
  imageLink = window.location.origin + image
  truncatedDescription = encodeURIComponent(description.substring(0, 100))
  "<a href='http://vk.com/share.php?url=" + url + "&title=" + encodedTitle + "&description=" + truncatedDescription + "&image=" + imageLink + "&noparse=true' target='_blank'><i class='fa fa-vk blue'></i></a>"

