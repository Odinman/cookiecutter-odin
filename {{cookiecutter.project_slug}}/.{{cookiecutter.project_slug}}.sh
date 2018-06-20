#!/bin/bash
#
# .{{cookiecutter.project_slug}}.sh
# Copyright (C) 2018 Odin <Odin@Odin-Pro.local>
#
# Distributed under terms of the MIT license.
#
source "`pwd`/.env"
export TZ="Asia/Shanghai"

set -e
set -x

export GOPATH=$GOPATH:`pwd`

if [ -x "$(command -v git)" ]; then
	# GITCOMMIT=$(git rev-parse --short HEAD)
	GITCOMMIT=$(git rev-parse HEAD)
else
	GITCOMMIT=$(date '+%Y%m%d%H%M%S')
fi


if [ "$GOOS" = "linux" ]; then
    go build -ldflags '-extldflags "-static"' -ldflags "-X wgo.AppVersion=${version} -X wgo.GitCommit=${GITCOMMIT} -X wgo.AppLevel=${level} -X 'wgo.BuildTime=`date -R`'" -o release/{{cookiecutter.project_slug}} {{cookiecutter.project_slug}}
else
    go build -ldflags "-X wgo.AppVersion=${version} -X wgo.GitCommit=${GITCOMMIT} -X wgo.AppLevel=${level} -X 'wgo.BuildTime=`date -R`'" -o release/{{cookiecutter.project_slug}} {{cookiecutter.project_slug}}
fi
