`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'catalogs', ->
    @route 'new'
    @route 'catalog', path: "/:id", ->
      @route 'edit'
      @route 'datasets', resetNamespace: true, ->
        @route 'new'
        @route 'dataset', path: "/:dataset_id", ->
          @route 'edit'
          @route 'distributions', resetNamespace: true, ->
            @route 'new'
            @route 'distribution', path: "/:distribution_id", ->
              @route 'edit'
          @route 'themes', resetNamespace: true, ->
            @route 'new'
            @route 'theme', path: "/:theme_id", ->
              @route 'edit'


`export default Router`
