Ember.Location.registerImplementation 'hashbang', Ember.HashLocation.extend(
  getURL: ->
    Ember.get(this, 'location').hash.substr 2
  setURL: (path) ->
    Ember.get(this, 'location').hash = '!' + path
    Ember.set this, 'lastSetURL', '!' + path
    return
  onUpdateURL: (callback) ->
    self = this
    guid = Ember.guidFor(this)
    Ember.$(window).bind 'hashchange.ember-location-' + guid, ->
      Ember.run ->
        path = location.hash.substr(2)
        if Ember.get(self, 'lastSetURL') == path
          return
        Ember.set self, 'lastSetURL', null
        callback path
        return
      return
    return
  formatURL: (url) ->
    '#!' + url
)