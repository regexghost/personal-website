#!/bin/sh

inputFile="$1"

sed 's/\\c-off /<\/span>/g' "$inputFile" |\
sed 's/\\c-\([a-z]*\) /<span class="text-\1">/g'
