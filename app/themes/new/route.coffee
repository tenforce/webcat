`import Ember from 'ember'`

ThemesNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'theme',
      dataset: @modelFor 'datasets.dataset'


`export default ThemesNewRoute`
