#!/usr/bin/env bash
# Please replace above line to proper path to your shell env.

set -e
unset GREP_OPTIONS

repo_dir=$1
files_pattern=$2

function main {
  set_repo_dir
  for rev in `revisions`; do
    echo "`lines_count` `commit_description`"
  done
}

function set_repo_dir {
  if [[ ! $repo_dir =~ ^\'.*/$ ]]; then
     repo_dir=$repo_dir/
  fi
  export GIT_DIR=$repo_dir.git
}

function revisions {
  git rev-list --reverse HEAD
}

function commit_description {
  git log --oneline -1 $rev
}

function lines_count {
  git ls-tree -r $rev |
  grep "$files_pattern" |
  awk '{print $3}' |
  xargs git show |
  wc -l
}

main
