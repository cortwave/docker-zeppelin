#!/usr/bin/env bash
cd /incubator-zeppelin/
mvn clean package -Pspark-1.6 -Dhadoop.version=2.6.0 -Phadoop-2.6 -Pyarn -DskipTests
