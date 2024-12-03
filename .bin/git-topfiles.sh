#!/bin/bash
set -ex

git log --pretty=format: --since="1 year ago" --name-only -- "*.*" | sort | uniq -c | sort -rg | head -5
