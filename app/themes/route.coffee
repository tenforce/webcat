`import Ember from 'ember'`

ThemesRoute = Ember.Route.extend
  actions:
    transitionToTheme: (theme) ->
      @transitionTo 'themes.theme', theme
      return

`export default ThemesRoute`
