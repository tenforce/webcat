`import Ember from 'ember'`

CatalogsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'catalog'
  actions:
    transitionToCatalog: (catalog) ->
      @transitionTo 'catalogs.catalog', catalog


`export default CatalogsNewRoute`
