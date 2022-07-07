# Clears the previous "wall of text".
clear
#
#------------------------------------------------------------------------------------
#
# Your One Life Server Configuration
# Please use these options instead of editing the actual JVM args.
#
# java_alloc is the Memory/RAM the server can use.
# Edit this if you need more RAM allocated!
java_alloc=4G
#
# server_jar is the jar-file the server will use.
# This does not need to be changed unless you're using a old Forge version.
server_jar=forge-1.12.2-14.23.5.2854.jar
#
#------------------------------------------------------------------------------------
#
# Minecraft Server Watchdog Version. This does not need to be changed.
watchdog_version=4.1
#
# One Life SMP Server Version. This also, does not need to be changed.
onelife_version=v4.1
#
#------------------------------------------------------------------------------------
#
# Informs the user that the server is starting.
echo "--------------------------------------------------------------"
echo "Welcome! Booting up your server on $java_alloc..."
echo "Something wrong or need any help? https://lunarcube.net/discord"
echo "--------------------------------------------------------------"
#
# Informs the user of the Watchdog Version
echo "[?] Using WATCHDOG Version: $watchdog_version"
#
# Informs the user of the One Life Server Version
echo "[?] Using One Life Version: $onelife_version"
#
#------------------------------------------------------------------------------------
# Actually starts running the server. If any issues were to happen
# Java should automatically tell the user something is wrong.
java -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -Xms$java_alloc -Xmx$java_alloc -jar $server_jar nogui
#
# When/or if the Server closes/stops responding. This lets the user know.
echo "----------------------------------------------------------------------"
echo "[WATCHDOG]: Server appears to have stopped. Restarting in 10 seconds."
echo "----------------------------------------------------------------------"
#
# Automatically restarts the server.
# You will need to change the permissions of the file
# to allow restarts without the 'sudo' command.
./start.sh
#------------------------------------------------------------------------------------
