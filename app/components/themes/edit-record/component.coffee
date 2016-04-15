`import Ember from 'ember'`

ThemesEditRecordComponent = Ember.Component.extend
  actions:
    save: ->
      @get('theme').save().then =>
        @sendAction 'afterSave', @get('theme')


`export default ThemesEditRecordComponent`
