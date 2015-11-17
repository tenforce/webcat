`import Ember from 'ember'`

CatalogsCatalogIndexRoute = Ember.Route.extend
  actions:
    destroy: (dataset) ->
      if confirm "Destroy this catalog?"
        dataset.destroyRecord().then () =>
          @transitionTo 'catalogs'


`export default CatalogsCatalogIndexRoute`
