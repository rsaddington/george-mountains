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

echo "Hello, Cloud: " $drush_alias

# Disable devel module
/usr/local/bin/drush9 @$drush_alias pm-uninstall devel --yes

# Turn off DBlog
/usr/local/bin/drush9 @$drush_alias pm-uninstall dblog --yes

# Turn on Syslog
/usr/local/bin/drush9 @$drush_alias pm-enable syslog --yes