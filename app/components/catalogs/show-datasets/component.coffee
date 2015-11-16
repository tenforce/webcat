`import Ember from 'ember'`

CatalogsShowDatasetsComponent = Ember.Component.extend
  datasets: Ember.computed.alias 'catalog.datasets'


`export default CatalogsShowDatasetsComponent`
