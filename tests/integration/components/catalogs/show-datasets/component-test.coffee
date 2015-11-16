`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'catalogs/show-datasets', 'Integration | Component | catalogs/show datasets', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{catalogs/show-datasets}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#catalogs/show-datasets}}
      template block text
    {{/catalogs/show-datasets}}
  """

  assert.equal @$().text().trim(), 'template block text'
