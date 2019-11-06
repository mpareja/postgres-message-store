#!/usr/bin/env bash

set -e

default_name=message_store

if [ -z ${DATABASE_USER+x} ]; then
  echo "(DATABASE_USER is not set. Default will be used.)"
  user=$default_name
else
  user=$DATABASE_USER
fi
echo "Database user is: $user"

if [ -z ${DATABASE_NAME+x} ]; then
  echo "(DATABASE_NAME is not set. Default will be used.)"
  database=$default_name
else
  database=$DATABASE_NAME
fi
echo "Database name is: $database"

function script_dir {
  val="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  echo "$val"
}

function grant-privileges {
  base=$(script_dir)
  psql --variable=DATABASE_USER=$user $database -f $base/user/privileges.sql
  echo
}

echo
echo "Granting Privileges"
echo "- - -"
grant-privileges
