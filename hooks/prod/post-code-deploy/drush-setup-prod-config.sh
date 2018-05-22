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

# Disable devel module
drush @$drush_alias pm-uninstall devel -y

# Turn off DBlog
drush @$drush_alias pm-uninstall dblog -y

# Turn on Syslog
drush @$drush_alias en syslog -y