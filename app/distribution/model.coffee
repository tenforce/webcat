`import DS from 'ember-data'`

Distribution = DS.Model.extend
  title: DS.attr 'string'
  description: DS.attr()

  dataset: DS.belongsTo('dataset')


`export default Distribution`
