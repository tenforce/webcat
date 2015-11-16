`import { moduleFor, test } from 'ember-qunit'`

moduleFor 'route:catalogs/catalog/index', 'Unit | Route | catalogs/catalog/index', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route
