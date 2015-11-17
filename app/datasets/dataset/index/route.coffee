`import Ember from 'ember'`

DatasetsDatasetIndexRoute = Ember.Route.extend
  actions:
    destroy: (dataset) ->
      if confirm "Destroy this dataset?"
        dataset.destroyRecord().then () =>
          @transitionTo 'catalogs.catalog'


`export default DatasetsDatasetIndexRoute`
