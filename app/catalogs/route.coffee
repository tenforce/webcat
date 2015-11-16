`import Ember from 'ember'`

CatalogsRoute = Ember.Route.extend
  model: ->
    @store.findAll('catalog')


`export default CatalogsRoute`
