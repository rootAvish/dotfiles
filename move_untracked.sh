#!/usr/bin/env bash
# Move all untracked files in the current directory to a folder called "untracked"
# TODO: Preserve the directory structure
mkdir -p ./untracked
for file in `git ls-files --others --exclude-standard`;do
    mv $file ./untracked/
done

echo "untracked" >> ./.gitignore
