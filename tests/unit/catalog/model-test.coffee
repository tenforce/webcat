`import { moduleForModel, test } from 'ember-qunit'`

moduleForModel 'catalog', 'Unit | Model | catalog', {
  # Specify the other units that are required for this test.
  needs: ['model:dataset']
}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model
