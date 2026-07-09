#!/bin/sh

awk '{
		if ($0 ~ /<h[1-6]>[^<]*<\/h[1-6]>/) { \
			line = $0; \
			sub(/[ \t]*<h/, "", line); \
			level = line; \
			sub(/>[^<]*<\/h[1-6].*/, "", level); \
			title = line; \
			sub(/^[1-6]>/, "", title); \
			sub(/<\/h[1-6].*/, "", title);
			id = title; \
			gsub(/[^a-zA-Z0-9]/, "-", id); \
			gsub(/---/, "-", id); \
			$0 = "<h" level " id=\"" tolower(id) "\">" title "</h" level ">" \
	} \
	print \
}'
