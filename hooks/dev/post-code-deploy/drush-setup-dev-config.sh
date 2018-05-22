#!/bin/sh
#
# Cloud Hook: drush-setup-dev-config
#
# Configure the dev environment
#

# Map the script inputs to convenient names.
site=$1
target_env=$2
drush_alias=$site'.'$target_env

# Enable the devel module
drush @$drush_alias pm-enable devel --yes

# Turn on DBlog
drush @$drush_alias pm-uninstall dblog --yes