#!/bin/sh

[ -d /tmp/mainwebsite ] && rm -rf /tmp/mainwebsite

mkdir /tmp/mainwebsite
mkdir /tmp/mainwebsite/content

cp -r gozer-files/templates /tmp/mainwebsite/
cp -r gozer-files/config.toml /tmp/mainwebsite/
cp -r index.md about.md /tmp/mainwebsite/content/
cp -r linux other blog devlog coding /tmp/mainwebsite/content/
cp -r static /tmp/mainwebsite/public
cp -r scripts/ /tmp/mainwebsite/

cd /tmp/mainwebsite
gozer build

while read -r html_file; do
	echo "$html_file"
	./scripts/handle-escapes.sh "$html_file" | tidy -q -indent > /tmp/tidy_out.html
	mv -f /tmp/tidy_out.html "$html_file"
done <<EOF
$(find /tmp/mainwebsite/build -type f | grep 'html$')
EOF

# Using python http.server instead of inbuilt gozer serve as serve re-builds, overwriting my changes with ./handle-escapes.sh and tidy
[ "$1" = "serve" ] && python3 -m http.server -d build/
