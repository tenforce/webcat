`import Ember from 'ember'`

mergeArrayPromises = (promises) ->
  promise = Ember.RSVP.all(promises).then((arrays) ->
    mergedArray = Ember.A()
    arrays.forEach((records) -> mergedArray.pushObjects(records.toArray()))
    mergedArray
  )
  DS.PromiseArray.create({promise: promise})

ThemesEditRecordComponent = Ember.Component.extend
  store: Ember.inject.service()
  actions:
    search: (term) ->
      return [] if Ember.isBlank(term)
      mergeArrayPromises [
        @theme.store.query('theme', {filter: {'pref-label': term}}),
        [{prefLabel: term, id: null}],
      ]
    handleChange: (option) ->
      if option.id?
        @set('theme', option)
        @set('selected', {prefLabel: option.get('prefLabel'), id: option.id})
      else
        @get('theme').setProperties option
        @set('selected', option)
    save: ->
      @get('theme').save().then =>
        @sendAction 'afterSave', @get('theme')


`export default ThemesEditRecordComponent`
