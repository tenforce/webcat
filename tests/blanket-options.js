/* globals blanket, module */

var options = {
  modulePrefix: 'webcat',
  filter: '//.*webcat/.*/',
  antifilter: '//.*(tests|template).*/',
  loaderExclusions: [],
  enableCoverage: true,
  cliOptions: {
    reporters: ['json', 'lcov', 'html'],
    autostart: true,
    lcovOptions: {
      outputFile: 'coverage/lcov.info'
    },
    jsonOptions: {
      outputFile: 'coverage/coverage.json'
    },
    htmlOptions: {
      outputFile: 'coverage/coverage.html'
    }
  }
};
if (typeof exports === 'undefined') {
  blanket.options(options);
} else {
  module.exports = options;
}
