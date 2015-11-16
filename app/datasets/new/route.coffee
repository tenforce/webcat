`import Ember from 'ember'`

DatasetsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'dataset',
      catalog: @modelFor 'catalogs.catalog'
  actions:
    transitionToDataset: (dataset) ->
      @transitionTo 'datasets.dataset', dataset


`export default DatasetsNewRoute`
