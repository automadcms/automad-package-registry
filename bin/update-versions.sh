#!/bin/bash

set -e

repoDir=$(pwd)
tmpFile=$repoDir/tmp.json

for json in ${repoDir}/public/*.json; do
	echo "Updating versions in $(basename $json) ..."

	cat $json | jq -c '.[]' | while read pkg; do
		version=$(git -c 'versionsort.suffix=-' \
			ls-remote --exit-code --refs --sort='version:refname' --tags \
			$(echo $pkg | jq --raw-output '.repository') '*.*.*' | tail --lines=1 | cut -f2 | sed 's|refs/tags/||')

		echo "$pkg" | jq --arg v "$version" '. + {version: $v}'
	done | jq -s '.' >$tmpFile && mv $tmpFile $json
done
