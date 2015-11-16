`import Ember from 'ember'`

DatasetsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'dataset',
      catalog: @modelFor 'catalogs.catalog'


`export default DatasetsNewRoute`
