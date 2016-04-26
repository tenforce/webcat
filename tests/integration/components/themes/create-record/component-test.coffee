`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`
`import { clickTrigger, typeInSearch, triggerKeydown } from '../../../../../tests/helpers/ember-power-select'`


moduleForComponent 'themes/create-record', 'Integration | Component | themes/create record', {
  integration: true
}

selectElement = (index) ->
  triggerKeydown $('.ember-power-select-search input, .ember-power-select-trigger-multiple-input')[0], 13

test 'it allows to select an existing theme', (assert) ->
  assert.expect 3
  done = assert.async()

  result = Ember.Object.create({})
  @set 'result', result

  one = Ember.Object.create({prefLabel: 'one', id: 1})
  two = Ember.Object.create({prefLabel: 'two', id: 2})
  p = null
  @set 'store', {
    query: (object, query) ->
      p = new Ember.RSVP.Promise (resolve) ->
        resolve Ember.ArrayProxy.create({
          content: Ember.A([one, two])
        })
  }

  @render hbs """{{themes/create-record theme=result store=store}}"""

  # open the drop down menu
  clickTrigger()
  assert.equal $('.ember-power-select-trigger').length, 1,
    'The .ember-power-select-trigger is visible'

  # enter something to search
  typeInSearch 'something'
  p.then () ->
    assert.equal $('.ember-power-select-option').length, 3,
      'it should have 3 options'
    selectElement 0
    assert.equal $('.ember-power-select-trigger').text().trim(), one.prefLabel,
      'element one should be selected'
    # NOTE: the result cannot be tested here because the object is replaced
    #       by the existing one
    done()

test 'it allows to create a new theme', (assert) ->
  assert.expect 5
  done = assert.async()

  result = Ember.Object.create({id: 1, prefLabel: 'something else'})
  @set 'result', result

  p = null
  @set 'store', {
    query: (object, query) ->
      p = new Ember.RSVP.Promise (resolve) ->
        resolve Ember.ArrayProxy.create({
          content: Ember.A([])
        })
  }

  @render hbs """{{themes/create-record theme=result store=store}}"""

  # open the drop down menu
  clickTrigger()
  assert.equal $('.ember-power-select-trigger').length, 1,
    'The .ember-power-select-trigger is visible'

  # enter something to search
  typeInSearch 'something'
  p.then () ->
    assert.equal $('.ember-power-select-option').length, 1,
      'it should have 1 option'
    selectElement 0
    assert.equal $('.ember-power-select-trigger').text().trim(),
      'Create theme something',
      'the creation option should be selected'
    assert.equal result.id, null, 'result has a null id'
    assert.equal result.prefLabel, 'something', 'result has a prefLabel'
    done()

test 'it triggers the afterSave', (assert) ->
  testSuceeded = false
  afterSave = () ->
    testSuceeded = true
  @set 'afterSave', afterSave

  result = Ember.Object.create({prefLabel: 'something else'})
  result.save = () ->
    p = new Ember.RSVP.Promise (resolve) -> resolve null
  @set 'result', result

  @render hbs """{{themes/create-record theme=result afterSave=afterSave}}"""

  $('.btn').click()
  assert.equal testSuceeded, true, 'the afterSave has been called'
