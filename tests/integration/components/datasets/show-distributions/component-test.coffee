`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'datasets/show-distributions', 'Integration | Component | datasets/show distributions', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{datasets/show-distributions}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#datasets/show-distributions}}
      template block text
    {{/datasets/show-distributions}}
  """

  assert.equal @$().text().trim(), 'template block text'
