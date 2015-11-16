`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'distributions/edit-record', 'Integration | Component | distributions/edit record', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{distributions/edit-record}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#distributions/edit-record}}
      template block text
    {{/distributions/edit-record}}
  """

  assert.equal @$().text().trim(), 'template block text'
