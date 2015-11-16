`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'catalogs/show-overview', 'Integration | Component | catalogs/show overview', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{catalogs/show-overview}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#catalogs/show-overview}}
      template block text
    {{/catalogs/show-overview}}
  """

  assert.equal @$().text().trim(), 'template block text'
