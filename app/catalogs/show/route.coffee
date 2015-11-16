`import Ember from 'ember'`

CatalogsShowRoute = Ember.Route.extend
  model: (params) ->
    @store.find( 'catalog', params.id )


`export default CatalogsShowRoute`
