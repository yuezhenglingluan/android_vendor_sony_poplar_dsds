#!/system/bin/sh
# *********************************************************************
# * Copyright 2017 (C) Sony Mobile Communications Inc.                *
# * All rights, including trade secret rights, reserved.              *
# *********************************************************************
#

# set cpuset configuratino
echo 0-3 > /dev/cpuset/background/cpus
echo 0-3 > /dev/cpuset/system-background/cpus

exit 0