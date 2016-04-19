`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'themes/show-overview', 'Integration | Component | themes/show overview', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 1

  @set('theme', {'prefLabel': 'Contra: The Hard Corps'})
  @render hbs """{{themes/show-overview theme=theme}}"""
  assert.equal @$().text().trim(), 'Contra: The Hard Corps'
