#! /bin/bash

export site_name="myblog01"
export JEKYLL_VERSION=3.8

cd $site_name

docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  -it jekyll/builder:$JEKYLL_VERSION \
  jekyll build