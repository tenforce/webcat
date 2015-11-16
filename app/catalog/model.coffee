`import DS from 'ember-data'`

Catalog = DS.Model.extend {
  title: DS.attr 'string'
  description: DS.attr()
  language: DS.attr 'string'
  homepage: DS.attr 'string'
}

`export default Catalog`
