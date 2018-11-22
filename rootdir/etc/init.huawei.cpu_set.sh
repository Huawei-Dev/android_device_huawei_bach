#!/system/bin/sh
#this file is added for setting the cpuset for 8917 platform,
#in our chipset code ,the 8917 and 8937 has the same code ,but 8917 only 4 cpus,
#so the init.huawei.os.rc has set the cpuset according to the 8937 8 cores, if the 8917 platform 
#set  cpuset as 8 cores , we will start the os slowly
if [ -f /sys/devices/soc0/soc_id ]; then
       soc_id=`cat /sys/devices/soc0/soc_id`
else
       soc_id=`cat /sys/devices/system/soc/soc0/id`
fi
case "$soc_id" in
	"303")

    echo 0-3 > /dev/cpuset/foreground/cpus
    echo 0-3 > /dev/cpuset/foreground/boost/cpus
    echo 0-3 > /dev/cpuset/top-app/cpus
  ;;
esac
