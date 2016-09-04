#!/bin/bash
cd conf && git log --pretty=format:'%ar %an created patch: %s' -10 > rev.txt && cd ../;
until ./core3; do
    echo "Server 'core3' crashed with exit code $?.  Restarting.." >&2
    sleep 60
done
