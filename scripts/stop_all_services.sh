#!/bin/sh

# Kill all services
killall ss-redir 2>/dev/null
killall unbound 2>/dev/null

echo "All service stopped."
