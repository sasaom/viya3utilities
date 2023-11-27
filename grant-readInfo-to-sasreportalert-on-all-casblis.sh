#!/bin/bash

export SAS_CLI_DEFAULT_CAS_SERVER="cas-shared-default"

# Get the list of all CASLIBS defined on the CAS Server
# ! to add also personal caslibs, user --show-personal-caslibs
CASLIBS=`sas-admin cas caslibs list --superuser --all | jq -r '.items[].name'`

sas-admin cas caslibs add-control --server cas-shared-default --superuser --caslib localdata --user "sas.reportAlerts" --grant ReadInfo

sas-admin cas caslibs add-control --server cas-shared-default --superuser --caslib localdata --user "sas.reportAlerts" --grant Select
