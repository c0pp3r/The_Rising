#!/bin/bash
cd ~/workspace/Core3/MMOCoreORB
git fetch
git pull
git reset --hard
make idl
make config
make build
cd ~/workspace/Core3/MMOCoreORB/bin
cd conf && git log --pretty=format:'%ar %an created patch: %s' -10 > rev.txt && cd ../;
./core3
until ./testcenter.sh; do
    echo "Server 'core3' crashed with exit code $?.  Restarting.." >&2
    sleep 60
done
