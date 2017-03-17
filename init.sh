#!/bin/bash
# Account information.
export DOMAIN_NAME=CHANGEME   ## Add the account ID
export TENANT_ID=CHNAGEME   ## Add project ID
export PROJECT_ID=$TENANT_ID
export USER_NAME=CHANGEME ## Add K5 username
export USER_PW=CHANGEME  ## Add K5 password
# Endpoint shortcut. echo "EP initial setup."
export TOKEN=https://identity.uk-1.cloud.global.fujitsu.com
export IDENTITY=$TOKEN
export NETWORK=https://networking.uk-1.cloud.global.fujitsu.com
export COMPUTE=https://compute.uk-1.cloud.global.fujitsu.com
export CEILOMETER=https://telemetry.uk-1.cloud.global.fujitsu.com
export TELEMETRY=$CEILOMETER
export DB=https://database.uk-1.cloud.global.fujitsu.com
export BLOCKSTORAGE=https://blockstorage.uk-1.cloud.global.fujitsu.com
export HOST_BLOCKSTORAGEV2=$BLOCKSTORAGE
export OBJECTSTORAGE=https://objectstorage.uk-1.cloud.global.fujitsu.com
export ORCHESTRATION=https://orchestration.uk-1.cloud.global.fujitsu.com
export ELB=https://loadbalancing.uk-1.cloud.global.fujitsu.com
export AUTOSCALE=https://autoscale.uk-1.cloud.global.fujitsu.com
export IMAGE=https://image.uk-1.cloud.global.fujitsu.com
export MAILSERVICE=https://mail.uk-1.cloud.global.fujitsu.com
export NETWORK_EX=https://networking-ex.uk-1.cloud.global.fujitsu.com
export DNS=https://dns.cloud.global.fujitsu.com
export VMIMPORT=https://vmimport.uk-1.cloud.global.fujitsu.com/v1/imageimport
export KEYMANAGEMENT=https://keymanagement.uk-1.cloud.global.fujitsu.com
#Initial setup
export NAME_FORMAT="TES_$ (date "+%m%d")_$(who am I | cut -d " " -f1)_"
#Other
#export alias_curl='curl --tlsv1.2'
export SCRIPT_PATH='pwd' 
export RES_DIR=response
export RES_PATH=$SCRIPT_PATH/$RES_DIR

