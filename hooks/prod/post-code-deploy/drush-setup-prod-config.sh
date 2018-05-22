#!/bin/sh
#
# Cloud Hook: drush-setup-prod-config
#
# Configure the prod environment
#

# Map the script inputs to convenient names.
site=$1
target_env=$2
drush_alias=$site'.'$target_env

# Disable devel module
/usr/local/bin/drush9 pm-uninstall devel --yes --root=/var/www/html/$drush_alias/docroot

# Turn off dblog
/usr/local/bin/drush9 pm-uninstall dblog --yes --root=/var/www/html/$drush_alias/docroot

# Turn on syslog
/usr/local/bin/drush9 pm-enable syslog --yes --root=/var/www/html/$drush_alias/docroot
