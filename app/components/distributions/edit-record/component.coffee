`import Ember from 'ember'`

DistributionsEditRecordComponent = Ember.Component.extend
  actions:
    save: ->
      @get('distribution').save().then =>
        @sendAction 'afterSave', @get('distribution')


`export default DistributionsEditRecordComponent`
