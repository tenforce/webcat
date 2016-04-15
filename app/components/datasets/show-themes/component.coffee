`import Ember from 'ember'`

DatasetsShowThemesComponent = Ember.Component.extend
  themes: Ember.computed.oneWay 'dataset.themes'


`export default DatasetsShowThemesComponent`
