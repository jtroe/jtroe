gcopr() {
  # checks out a PR by number
  # useful if the PR is from a fork
  if [ $# -eq 0 ]; then
    echo "must provide pr#"
    return 1
  fi
  git fetch origin pull/$1/head && git checkout FETCH_HEAD
}

gbpr() {
  # checks out a PR by number and creates/updates a branch `pr/<pr#>`
  gcopr $1 && git checkout -B pr/$1
}
