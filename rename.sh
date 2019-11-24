#!/bin/sh

# Attempt 1
#for f in 2019-11-*.md; do mv "$f" "$(echo "$f" | sed s/2019-11/)"; done

# Attempt 2
#for file in 2019-11-*.md
#do
#    mv $file ${file/2019-11-*/}.md
#done

for f in 2019-11-*.md; do mv "$f" "${f/2019-11-/}"; done

