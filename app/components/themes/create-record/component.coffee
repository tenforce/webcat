`import Ember from 'ember'`

ThemesEditRecordComponent = Ember.Component.extend
  store: Ember.inject.service('store:main')
  actions:
    search: (term) ->
      if Ember.isBlank(term)
        return []
      else
        return @get('store')
          .query('theme', { filter: { 'pref-label': term } })
          .then (result) ->
            result.toArray().addObject({prefLabel: term, id: null})
    handleChange: (option) ->
      if option.id?
        @set('theme', option)
        @set('selected', {prefLabel: option.get('prefLabel'), id: option.id})
      else
        @get('theme').setProperties option
        @set('selected', option)
      return
    save: ->
      @get('theme').save().then =>
        @sendAction 'afterSave', @get('theme')


`export default ThemesEditRecordComponent`
