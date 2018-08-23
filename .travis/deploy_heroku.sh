#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
docker login -e _ -u _ --password=$HEROKU_API_KEY registry.heroku.com
heroku container:release web
