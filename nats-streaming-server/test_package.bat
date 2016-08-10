@echo off
REM  Copyright 2016 Apcera Inc. All rights reserved.
REM add -dv to install for debugging.
nats-streaming-server -version

choco install nats-streaming-server -fdvy -s "%cd%"
nats-streaming-server -version
choco uninstall nats-streaming-server -y

choco install nats-streaming-server -forcex86 -fy -s "%cd%"
nats-streaming-server -version
choco uninstall nats-streaming-server -y

choco install nats-streaming-server -fy -s "%cd%"
nats-streaming-server -version
choco uninstall nats-streaming-server -y
