#!/bin/sh

if [ ! -d ".meteor" ]; then
  echo "Current folder doesn't sound like a Meteor project, stopping."
  exit 1
fi

if [[ -f "daocloud.yml" && -f "Dockerfile.buildtime" && -f "Dockerfile.runtime" && $1 != "update" ]]; then
    echo "Sounds you have installed DoMeteor. Use 'update' option to update existing installation. Note you'll lose any changes you made in DoMeteor files if you try updating!"
    exit 1
fi

if [[ $1 = "update" ]]; then
    rm Dockerfile.buildtime
    rm Dockerfile.runtime
    rm daocloud.yml
fi

curl https://rawgit.com/VividCloud/dometeor/master/daocloud.yml > daocloud.yml
curl https://rawgit.com/VividCloud/dometeor/master/Dockerfile.buildtime > Dockerfile.buildtime
curl https://rawgit.com/VividCloud/dometeor/master/Dockerfile.runtime > Dockerfile.runtime

echo "Installed DoMeteor! Don't forget check the files into your VCS!"
