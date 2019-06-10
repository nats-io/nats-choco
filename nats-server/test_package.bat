@echo off
REM Copyright 2019 The NATS Authors. All rights reserved.
REM add -dv to install for debugging.
nats-server -version

choco install nats-server -fdvy -s "%cd%"
nats-server -version
choco uninstall nats-server -y

choco install nats-server -forcex86 -fy -s "%cd%"
nats-server -version
choco uninstall nats-server -y

choco install nats-server -fy -s "%cd%"
nats-server -version
choco uninstall nats-server -y
