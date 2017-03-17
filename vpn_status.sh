#!/bin/bash

curl $NETWORK/v2.0/vpn/ssl-vpn-connections -X GET -H "X-Auth-Token:$OS_Auth_Token" -H "Content-Type: application/json" | jq

