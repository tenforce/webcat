/* globals blanket, module */

var options = {
  modulePrefix: 'webcat',
  filter: '//.*webcat/.*/',
  antifilter: '//.*(tests|template).*/',
  loaderExclusions: [],
  enableCoverage: true,
  cliOptions: {
    reporters: ['lcov', 'html'],
    autostart: true,
    lcovOptions: {
      renamer: function(moduleName) {
        var expression = /^webcat/;
        var name = moduleName.replace(/^webcat\/config/, 'config');
        return name.replace(expression, 'app') + '.js';
      }
    }
  }
};
if (typeof exports === 'undefined') {
  blanket.options(options);
} else {
  module.exports = options;
}
