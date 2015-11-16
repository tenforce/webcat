`import Ember from 'ember'`

CatalogsEditRecordComponent = Ember.Component.extend
  actions:
    save: ->
      @get('catalog').save().then =>
        @sendAction "afterSave", @get('catalog')
      return


`export default CatalogsEditRecordComponent`
