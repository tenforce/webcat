`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'themes/edit-record', 'Integration | Component | themes/edit record', {
  integration: true
}


test 'it renders', (assert) ->
  assert.expect 1

  @render hbs """{{themes/edit-record}}"""
  assert.equal @$().text().trim(), """
Preferred Label
      
    
    
      
        Save
        """
