#!/bin/sh
JBOSS_HOME=`pwd` bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0 --server-config=standalone-full.xml -Djboss.node.name=ATHENA_APP -Dbatch=true -Dresteasy.preferJacksonOverJsonB=false
