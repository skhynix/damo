#!/bin/bash
# SPDX-License-Identifier: GPL-2.0

bindir=$(dirname "$0")
cd "$bindir" || exit 1

for test_dir in record report convert_schemes schemes damon_reclaim
do
	if ! "./$test_dir/test.sh"
	then
		exit 1
	fi
done

echo "PASS ALL"
