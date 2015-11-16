`import { moduleFor, test } from 'ember-qunit'`

moduleFor 'route:catalogs/catalog/edit', 'Unit | Route | catalogs/catalog/edit', {
  # Specify the other units that are required for this test.
  # needs: ['controller:foo']
}

test 'it exists', (assert) ->
  route = @subject()
  assert.ok route
