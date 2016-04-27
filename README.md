[![Build Status](https://travis-ci.org/tenforce/webcat.svg?branch=master)](https://travis-ci.org/tenforce/webcat)
[![Code Climate](https://codeclimate.com/github/tenforce/webcat/badges/gpa.svg)](https://codeclimate.com/github/tenforce/webcat)
[![Test Coverage](https://codeclimate.com/github/tenforce/webcat/badges/coverage.svg)](https://codeclimate.com/github/tenforce/webcat/coverage)

# Webcat

webCAT is a frontend for muDCAT, a configuration for mu.semte.ch which follows
the DCAT standard.

The application doesn't support the full DCAT standard, but it can easily be
extended where necessary.

## Getting started

In order to run this application, install Docker and docker-compose (see
[docs.docker.com](http://docs.docker.com/)).  Run the application like:

    git clone https://github.com/tenforce/webcat.git
    cd webcat
    docker-compose up

All requirements will be downloaded and the system will be started.  Visit your
[localhost](http://localhost) to use webcat.

## Developing

This application uses ember-cli.  See [ember-cli.com](http://ember-cli.com) for
more information on developing ember-cli applications.

In short:

    npm install -g ember-cli
    git clone https://github.com/tenforce/webcat.git
    cd webcat
    npm install
    bower install
    docker-compose up & # or run this in a separate terminal for the backend
    ember serve --proxy http://localhost/

And, after it has finished building, can visit your live application at
[localhost:4200](http://localhost:4200).


## Further Reading / Useful Links

* [mu.semte.ch](http://mu.semte.ch/)
* [ember.js](http://emberjs.com/)
* [ember-cli](http://www.ember-cli.com/)
* Development Browser Extensions
  * [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
  * [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)

