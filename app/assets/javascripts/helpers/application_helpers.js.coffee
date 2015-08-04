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

Ember.Handlebars.helper "twitterShareButton", ->
  url = encodeURIComponent(window.location.href)
  "<a href='https://twitter.com/intent/tweet?url=" + url + "' target='_blank'><i class='fa fa-twitter azure'></i></a>"


Ember.Handlebars.helper "googleShareButton", ->
  url = encodeURIComponent(window.location.href)
  "<a href='https://plus.google.com/share?url=" + url + "' target='_blank'><i class='fa fa-google-plus red'></i></a>"


Ember.Handlebars.helper "facebookShareButton", (title, description, image)->
  url = encodeURIComponent(window.location.href)
  encodedTitle = encodeURIComponent(title)
  "<a href='http://facebook.com/sharer/sharer.php?u=" + url + "&t=" + encodedTitle + "' target='_blank'><i class='fa fa-facebook dark-blue'></i></a>"

Ember.Handlebars.helper 'headTitle', (title, subtext='', args='') ->
  Ember.$('head').find('title').text(title + subtext + args)
  ''

Ember.Handlebars.helper 'headDescription', (title, subtext='', args='') ->
  Ember.$('head').find('meta[name=description]').attr('content', title + subtext + args)
  ''

Ember.Handlebars.helper 'IsEmpty', (model) ->
  model.content.length <= 0