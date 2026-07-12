#!/bin/sh
set -eu

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
report="$repo_dir/MIGRATION.md"
source_dir=${1:-"$PWD"}
destination_dir=${2:-"$repo_dir/mods"}

if [ ! -d "$source_dir" ]; then
	printf 'Source directory does not exist: %s\n' "$source_dir" >&2
	exit 2
fi

mkdir -p "$destination_dir"

files=$(awk '
	/^## Unresolved selected JARs$/ { unresolved = 1; next }
	/^## / { unresolved = 0 }
	unresolved && /^- `/ {
		sub(/^- `/, "")
		sub(/`.*/, "")
		print
	}
' "$report")

copied=0
existing=0
missing=0

while IFS= read -r file; do
	[ -n "$file" ] || continue
	if [ -f "$destination_dir/$file" ]; then
		existing=$((existing + 1))
	elif [ -f "$source_dir/$file" ]; then
		cp -p "$source_dir/$file" "$destination_dir/$file"
		printf 'Copied: %s\n' "$file"
		copied=$((copied + 1))
	else
		printf 'Missing: %s\n' "$file" >&2
		missing=$((missing + 1))
	fi
done <<EOF
$files
EOF

printf '\nCopied: %d; already present: %d; still missing: %d\n' \
	"$copied" "$existing" "$missing"

[ "$missing" -eq 0 ]
