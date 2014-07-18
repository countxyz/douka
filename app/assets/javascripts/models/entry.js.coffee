App.Entry = DS.Model.extend
  feed: DS.belongsTo('feed')
  url: DS.attr('string')
  title: DS.attr('string')
  summary: DS.attr('string')
