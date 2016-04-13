`import Ember from 'ember'`

ThemesThemeIndexRoute = Ember.Route.extend
  actions:
    destroy: (theme) ->
      if confirm "Destroy this record?"
        theme.destroyRecord().then () =>
          @transitionTo 'datasets.dataset'


`export default ThemesThemeIndexRoute`
