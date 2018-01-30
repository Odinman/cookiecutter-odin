//
// version.go
// Copyright (C) 2018 {{ cookiecutter.full_name }} <{{cookiecutter.email}}>
//
// Distributed under terms of the MIT license.
//

package main

// The git commit that was compiled. This will be filled in by the compiler.
var GitCommit string

// The main version number that is being run at the moment.
const Version = "{{ cookiecutter.version }}"

// A pre-release marker for the version. If this is "" (empty string)
// then it means that it is a final release. Otherwise, this is a pre-release
// such as "dev" (in development)
var VersionPrerelease = ""
