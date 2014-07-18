App.Feed = DS.Model.extend
  entries: DS.hasMany('entry', async: true)
  url: DS.attr('string')
