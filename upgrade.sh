#!/bin/bash

# Exit if /tmp/lock.file exists
[ -f /tmp/lock.file ] && exit

# Create lock file, sleep 1 sec and verify lock
echo $$ > /tmp/lock.file
sleep 1
[ "x$(cat /tmp/lock.file)" == "x"$$ ] || exit

# do all the things!
docker-compose pull
docker-compose up -d

# done! GitLab will do its initial setup and be running with a couple minutes
echo 'Assuming no errors, your newly updated container is now starting up.'
echo "Recommended: run "docker stats" to observe the CPU consumption. After it settles back down to ~1%, you should be good to go; shouldn't take more than ~2-3 minutes on a smaller update."

# Remove lock file
rm /tmp/lock.file

exit 0
