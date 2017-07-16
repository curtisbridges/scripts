#!/bin/sh
#
# TODO:
#   (1) getopts - option to stage all and commit source? Verbose, and usage.
#

if [ $# -eq 0 ]; then
    echo "Must supply a commit message!"
    exit 1
fi

SOURCE=~/Developer/personal/curtisbridges.com
DESTINATION=~/Developer/personal/curtisbridges.github.com

if [ "$PWD" != "$SOURCE" ]; then
    echo "In order to publish the blog, run this script from the blog source directory: "
    echo "-->\t" $SOURCE
    exit 2
fi

add_commit()
{
    pushd $1 &> /dev/null
    git add . && git commit -m "$2" || exit 3
    # echo "Success committing directory."
    popd &> /dev/null
}

generate_website()
{
    hugo &> /dev/null || exit 4
}

# Main part of script

add_commit "$SOURCE" "$1" && generate_website && add_commit "$DESTINATION" "$1"

#
# Footnotes:
#   (1) https://stackoverflow.com/questions/16483119/example-of-how-to-use-getopts-in-bash
#

