#!/bin/bash
mkdir -p $XDG_DATA_HOME $XDG_CONFIG_HOME $XDG_CACHE_HOME
exec /usr/bin/thunder 
