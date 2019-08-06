#!/system/bin/sh
# *********************************************************************
# * Copyright 2016 (C) Sony Mobile Communications Inc.                *
# * All rights, including trade secret rights, reserved.              *
# *********************************************************************
#

# set cpu_boost parameters
echo "80" > /sys/module/cpu_boost/parameters/input_boost_ms

# for task packing criteria
echo 500000 > /proc/sys/kernel/sched_short_burst_ns

# binder performance
# wakeup on same core as caller for sync wakeups
echo 1 > /proc/sys/kernel/sched_prefer_sync_wakee_to_waker
# avoid using the same cluster/same core shortcut for really big tasks
cat  /proc/sys/kernel/sched_upmigrate > /proc/sys/kernel/sched_small_wakee_task_load
# but the load of the caller should not influence this
echo 0 > /proc/sys/kernel/sched_big_waker_task_load

exit 0
