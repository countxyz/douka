App.Router.reopen
  location: 'auto'
  rootURL: '/'

App.Router.map ()->
  @resource 'feeds', path: '/'
