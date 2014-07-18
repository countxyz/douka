App.FeedsNewController = Ember.ObjectController.extend

  actions:

    submit: (feed) ->
      feed.save()
      @transitionToRoute 'feeds'
