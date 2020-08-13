#!/bin/bash
sh mqnamesrv &
sh mqbroker -c /opt/rocketmq-4.4.0/conf/broker.conf autoCreateTopicEnable=true &
