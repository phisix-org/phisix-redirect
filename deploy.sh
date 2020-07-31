#!/bin/bash
set -ev
if [ "${TRAVIS_PULL_REQUEST}" = "false" ]; then
  gcloud auth activate-service-account --key-file phisix-api-f6d7427c49af.json
  mvn clean package appengine:deploy

  gcloud auth activate-service-account --key-file phisix-api-f6d7427c49af.json
  mvn clean package appengine:deploy -Predirect-3

  gcloud auth activate-service-account --key-file phisix-api-f6d7427c49af.json
  mvn clean package appengine:deploy -Predirect-4

fi
