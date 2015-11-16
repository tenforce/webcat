`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'catalogs', ->
    @route 'new'
    @route 'catalog', path: "/:id", ->
      @route 'datasets', resetNamespace: true, ->
        @route 'new'
        @route 'dataset', path: "/:dataset_id", ->


`export default Router`
