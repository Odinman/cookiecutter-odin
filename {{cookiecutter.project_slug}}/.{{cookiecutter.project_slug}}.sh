#! /bin/sh
#
# .{{cookiecutter.project_slug}}.sh
# Copyright (C) 2018 Odin <Odin@Odin-Pro.local>
#
# Distributed under terms of the MIT license.
#

set -e
set -x

export GOPATH=$GOPATH:`pwd`

if [ "$GOOS" = "linux" ]; then
    go build -ldflags '-extldflags "-static"' -o release/{{cookiecutter.project_slug}} {{cookiecutter.project_slug}}
else
    go build -o release/{{cookiecutter.project_slug}} {{cookiecutter.project_slug}}
fi
