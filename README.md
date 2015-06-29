docker-postgresql-autodoc
==============

A docker that runs postgresql-autodoc.

**OBS:** this is meant to be used linked to Postgresql container with `db` as alias.

Usage
-----

First build the image:

    docker build -t postgresql_autodoc github.com/arruda/docker-postgresql-autodoc

Then run it:

    docker run -d \
               --link postgresql:db \
               -v some/where/to/save/the/pngs/:/data \
               -e DB_ENV_DB="database_name" \
               -e DB_ENV_USER="user" \
               -e DB_ENV_PASS="pass" \
               postgresql_autodoc


This generate the postgresql_autodoc and save the a *png* and a *dot* file with the name `database_name.png` inside volume mapped to the `/data` folder.


LICENSE
=============
This software is distributed using MIT license, see LICENSE file for more details.
