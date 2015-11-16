`import DS from 'ember-data'`

Dataset = DS.Model.extend {
  title: DS.attr 'string'
  description: DS.attr()

  catalog: DS.belongsTo 'catalog'
}

`export default Dataset`
