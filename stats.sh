#!/usr/bin/env bash

set -e

files_pattern=$1

function main {
  for rev in `revisions`; do
    echo "`lines_count` `commit_description`"
  done
}

function revisions {
  git rev-list --reverse HEAD
}

function commit_description {
  git log --oneline -1 $rev
}

function lines_count {
  git ls-tree -r $rev |
  awk '{print $3}' |
  xargs git show |
  wc -l
}

main
