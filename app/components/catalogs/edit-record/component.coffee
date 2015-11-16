`import Ember from 'ember'`

CatalogsEditRecordComponent = Ember.Component.extend
  actions:
    save: ->
      @get('catalog').save()
      return


`export default CatalogsEditRecordComponent`
