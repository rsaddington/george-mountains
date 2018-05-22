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
/usr/local/bin/drush9 pm-enable devel --yes --root=/var/www/html/$drush_alias/docroot

# Turn on DBlog
/usr/local/bin/drush9 pm-uninstall dblog --yes --root=/var/www/html/$drush_alias/docroot
