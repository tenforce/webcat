`import DS from 'ember-data'`

Theme = DS.Model.extend
  prefLabel: DS.attr 'string'

  datasets: DS.hasMany('dataset')


`export default Theme`
