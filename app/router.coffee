`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'catalogs'

  @route 'catalogs/new'
  @route 'catalogs/show'

`export default Router`
