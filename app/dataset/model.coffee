`import DS from 'ember-data'`

Dataset = DS.Model.extend
  title: DS.attr 'string'
  description: DS.attr()

  catalog: DS.belongsTo 'catalog'
  datasets: DS.hasMany 'dataset'


`export default Dataset`
