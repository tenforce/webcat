`import Ember from 'ember'`

DatasetsEditRecordComponent = Ember.Component.extend
  actions:
    save: ->
      @get('dataset').save().then =>
        @sendAction "afterSave", @get('dataset')
      return


`export default DatasetsEditRecordComponent`
