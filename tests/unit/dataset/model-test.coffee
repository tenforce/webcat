`import { moduleForModel, test } from 'ember-qunit'`

moduleForModel 'dataset', 'Unit | Model | dataset', {
  # Specify the other units that are required for this test.
  needs: ['model:catalog', 'model:distribution', 'model:theme']
}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model
