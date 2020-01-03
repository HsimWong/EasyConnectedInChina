#!/usr/bin/env sh
getPingVal(){
	local domName=$1
	echo $({ time nc -v -z $domName 80;} 2>&1 | awk -F 'real' '{print $2}')
}

getPingVal github.com


