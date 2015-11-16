`import Ember from 'ember'`

DatasetsShowDistributionsComponent = Ember.Component.extend
  distributions: Ember.computed.oneWay 'dataset.distributions'


`export default DatasetsShowDistributionsComponent`
