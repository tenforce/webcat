`import Ember from 'ember'`

DistributionsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'distribution',
      dataset: @modelFor 'datasets.dataset'
  actions:
    transitionToDistribution: (distribution) ->
      @transitionTo 'distributions.distribution', distribution


`export default DistributionsNewRoute`
