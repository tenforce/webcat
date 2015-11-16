`import Ember from 'ember'`

DatasetsEditRecordComponent = Ember.Component.extend
  actions:
    save: ->
      @get('dataset').save()
      return


`export default DatasetsEditRecordComponent`
