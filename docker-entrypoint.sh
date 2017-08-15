#!/bin/sh

echo "Ready"
# Give it another second.
sleep 1;

echo "Starting CTFd"
gunicorn --bind 0.0.0.0:8000 -w 1 'CTFd:create_app()' --access-logfile '/opt/CTFd/CTFd/logs/access.log' --error-logfile '/opt/CTFd/CTFd/logs/error.log'
