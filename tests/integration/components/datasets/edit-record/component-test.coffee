`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'datasets/edit-record', 'Integration | Component | datasets/edit record', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{datasets/edit-record}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#datasets/edit-record}}
      template block text
    {{/datasets/edit-record}}
  """

  assert.equal @$().text().trim(), 'template block text'
