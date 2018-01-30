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
