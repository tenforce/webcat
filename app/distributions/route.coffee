`import Ember from 'ember'`

DistributionsRoute = Ember.Route.extend
  actions:
    transitionToDistribution: (distribution) ->
      @transitionTo 'distributions.distribution', distribution
      return

`export default DistributionsRoute`
