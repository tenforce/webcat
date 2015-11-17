`import Ember from 'ember'`

DatasetsDatasetEditRoute = Ember.Route.extend
  actions:
    transitionToDataset: (dataset) ->
      @transitionTo 'datasets.dataset', dataset


`export default DatasetsDatasetEditRoute`
