`import Ember from 'ember'`

CatalogsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'catalog'


`export default CatalogsNewRoute`
