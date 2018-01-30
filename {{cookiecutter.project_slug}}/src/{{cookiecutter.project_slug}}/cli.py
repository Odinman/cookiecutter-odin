# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Odin <{{cookiecutter.email}}>
#
# Distributed under terms of the MIT license.

"""
Console script for {{cookiecutter.project_slug}}.
"""

import click


@click.command()
def main(args=None):
    """Console script for {{cookiecutter.project_slug}}."""
    click.echo("Replace this message by putting your code into "
               "{{cookiecutter.project_slug}}.cli.main")
    click.echo("See click documentation at http://click.pocoo.org/")


if __name__ == "__main__":
    main()
