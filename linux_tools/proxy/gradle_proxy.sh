#!/bin/bash
cat >  /home/cuisongliu/.m2/.gradle/gradle.properties << eof
systemProp.http.proxyHost=127.0.0.1
systemProp.http.proxyPort=39237
systemProp.http.nonProxyHosts=10.0.*|localhost|*.unicloud-tj.com


systemProp.https.proxyHost=127.0.0.1
systemProp.https.proxyPort=39237
systemProp.https.nonProxyHosts=10.0.*|localhost|*.unicloud-tj.com


eof