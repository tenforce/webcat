`import Ember from 'ember'`

CatalogsCatalogRoute = Ember.Route.extend
  model: (params) ->
    @store.find 'catalog', params.id


`export default CatalogsCatalogRoute`
