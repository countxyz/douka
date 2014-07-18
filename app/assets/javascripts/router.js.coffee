App.Router.reopen
  rootURL: '/'
  location: 'auto'

App.Router.map ()->
  @resource 'feeds', path: '/', ->
    @route 'new'
    @resource 'feed', path: 'feeds/:feed_id'
