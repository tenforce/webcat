`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'catalogs/edit-record', 'Integration | Component | catalogs/edit record', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{catalogs/edit-record}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#catalogs/edit-record}}
      template block text
    {{/catalogs/edit-record}}
  """

  assert.equal @$().text().trim(), 'template block text'
