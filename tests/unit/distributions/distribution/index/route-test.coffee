`import { moduleFor, test } from 'ember-qunit'`

moduleFor 'route:distributions/distribution/index', 'Unit | Route | distributions/distribution/index', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route
