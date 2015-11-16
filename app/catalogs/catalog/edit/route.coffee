`import Ember from 'ember'`

CatalogsCatalogEditRoute = Ember.Route.extend
  actions:
    transitionToCatalog: (catalog) ->
      @transitionTo 'catalogs.catalog', catalog

`export default CatalogsCatalogEditRoute`
