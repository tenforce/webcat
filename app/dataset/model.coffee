`import DS from 'ember-data'`

Dataset = DS.Model.extend
  title: DS.attr 'string'
  description: DS.attr()

  catalog: DS.belongsTo 'catalog'
  themes: DS.hasMany 'theme'
  distributions: DS.hasMany 'distribution'


`export default Dataset`
