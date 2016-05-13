@echo off
REM  Copyright 2016 Apcera Inc. All rights reserved.
REM add -dv to install for debugging.
gnatsd -version

choco install gnatsd -fdvy -s "%cd%"
gnatsd -version
choco uninstall gnatsd -y

choco install gnatsd -forcex86 -fy -s "%cd%"
gnatsd -version
choco uninstall gnatsd -y

choco install gnatsd -fy -s "%cd%"
gnatsd -version
choco uninstall gnatsd -y
