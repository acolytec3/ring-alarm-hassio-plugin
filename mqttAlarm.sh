#!/bin/bash

CONFIG_PATH=/data/options.json
RING_USERNAME=$(jq --raw-output ".ring_username" $CONFIG_PATH) 
RING_PASSPHRASE=$(jq --raw-output ".ring_password" $CONFIG_PATH) 
MQTT=$(jq --raw-output ".mqtt_broker" $CONFIG_PATH) 
MQTT_USER=$(jq --raw-output ".mqtt_user" $CONFIG_PATH)
MQTT_PW=$(jq --raw-output ".mqtt_password" $CONFIG_PATH) 
DISCOVERY=$(jq --raw-output ".discovery" $CONFIG_PATH) 

RING_USERNAME=$RING_USERNAME RING_PASSPHRASE=$RING_PASSPHRASE MQTT=$MQTT MQTT_USER=$MQTT_USER MQTT_PW=$MQTT_PW DISCOVERY=$DISCOVERY node mqttAlarm.js
