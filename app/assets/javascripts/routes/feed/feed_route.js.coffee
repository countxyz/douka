App.FeedRoute = Ember.Route.extend
  model: (params) -> @store.find('feed', params['feed_id'])

  afterModel: (model) -> @transitionTo('feed', model.get('id'))
