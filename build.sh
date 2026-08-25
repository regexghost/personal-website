#!/bin/sh

pushwebsite () {
	rsync -arvc --delete "$1" racknerd:/var/www/personal-website/
}

case "$1" in
	b*)
		./scripts/make.sh
		;;
	p*)
		pushwebsite /tmp/personal-website/build/
		;;
	f*)
		./scripts/make.sh
		pushwebsite /tmp/personal-website/build/
		;;
	*)
		echo "Usage: case [build|push]"
		;;
esac
