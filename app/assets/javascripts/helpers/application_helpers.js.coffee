Ember.Handlebars.helper "truncate", (string, str_size) ->
  if string.length > str_size
    string = string.substring(0, str_size) + "..."
  string

Ember.Handlebars.helper "date", (date) ->
  moment(date).format('DD.MM.YYYY');

Ember.Handlebars.helper "postInfoDate", (date) ->
  moment(date).format('dddd, DD MMMM YYYY');

#  Tuesday, 23 September 2014
#moment().format('MMMM Do YYYY, h:mm:ss a'); // March 20th 2015, 5:27:58 pm
#moment().format('dddd');                    // Friday
#moment().format("MMM Do YY");               // Mar 20th 15
#moment().format('YYYY [escaped] YYYY');     // 2015 escaped 2015
#moment().format();                          // 2015-03-20T17:27:58+02:00