#!/bin/sh

TMP_DIR="/tmp/personal-website"

[ -d "$TMP_DIR" ] && rm -rf "$TMP_DIR"

mkdir "$TMP_DIR"
mkdir "${TMP_DIR}/content"

cd ~/Programs/websites/personal-website

cp -r gozer-files/templates "${TMP_DIR}/"
cp -r gozer-files/config.toml "${TMP_DIR}/"
cp -r index.md about.md "${TMP_DIR}/content/"
cp -r linux other blog devlog coding "${TMP_DIR}/content/"
cp -r static "${TMP_DIR}/public"
cp -r scripts/ "${TMP_DIR}/"

while read -r md_file; do
	if grep -q "draft = true" "$md_file"; then
		rm "$md_file"
	fi
done <<EOF
$(find "${TMP_DIR}/" -type f | grep 'md$')
EOF

cd "$TMP_DIR"
gozer build

while read -r html_file; do
	echo "$html_file"
	./scripts/handle-escapes.sh "$html_file" | ./scripts/header-ids.sh | tidy -q -indent > /tmp/tidy_out.html
	mv -f /tmp/tidy_out.html "$html_file"
done <<EOF
$(find "${TMP_DIR}/build" -type f | grep 'html$')
EOF

# Using python http.server instead of inbuilt gozer serve as serve re-builds, overwriting my changes with ./handle-escapes.sh and tidy
[ "$1" = "serve" ] && python3 -m http.server -d build/
