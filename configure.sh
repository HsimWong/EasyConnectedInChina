#!/usr/bin/env sh
getPingVal(){
	local domName=$1
	echo `ping $domName -c 4 | tail -1 | awk -F '=' '{ print $2 }' | awk -F '/' '{ print $2 }'`
}

