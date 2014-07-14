App.FeedsRoute = Ember.Route.extend

  model: -> @store.find 'feed'
