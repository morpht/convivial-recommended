#!/usr/bin/env bash

project_name=$(grep 'name:.*' .lando.yml|cut -f2- -d:|xargs)
if [[ ! -e drush/sites/pantheon/$project_name.site.yml && -f web/profiles/contrib/convivial/assets/convivial.site.yml ]]; then
  cp web/profiles/contrib/convivial/assets/convivial.site.yml "drush/sites/pantheon/$project_name.site.yml"
  sed -i "s/convivial/$project_name/g" "drush/sites/pantheon/$project_name.site.yml"
fi

