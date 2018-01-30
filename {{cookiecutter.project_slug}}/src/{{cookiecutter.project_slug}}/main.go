//
// version.go
// Copyright (C) 2018 {{ cookiecutter.full_name }} <{{cookiecutter.email}}>
//
// Distributed under terms of the MIT license.
//

package main

import (
	"wgo"
	"wgo/rest"

	_ "{{ cookiecutter.project_slug }}/api"
)

func main() {
	rest.RegisterConfig("{{ cookiecutter.project_slug }}")
	wgo.Run()
}
