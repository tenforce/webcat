`import Ember from 'ember'`

DistributionsDistributionIndexRoute = Ember.Route.extend
  actions:
    destroy: (distribution) ->
      if confirm "Destroy this record?"
        distribution.destroyRecord().then () =>
          @transitionTo 'datasets.dataset'


`export default DistributionsDistributionIndexRoute`
