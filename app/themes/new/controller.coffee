`import Ember from 'ember'`

ThemesNewController = Ember.Controller.extend
  datasetController: Ember.inject.controller('datasets.dataset'),
  dataset: Ember.computed.reads('datasetController.model')
  actions:
    afterCreate: (theme) ->
      dataset = @get 'dataset'
      theme.get('datasets').pushObject dataset
      theme.save()
      dataset.get('themes').pushObject theme
      dataset.save()
      @transitionToRoute 'themes.theme', theme
      return

`export default ThemesNewController`
