# Foodfy App parent folder

This repository holds source files for a docker hosted db, and as submodule, the app Foodfy.

Upon cloning, this repository is meant to bear as subfolder the [*foodfy* app repository](https://github.com/fernandoroa/foodfy_rs_challenge).

This repository holds docker related files and the postgres database needed by the foodfy app.

Specifics about cloning and running the app will stay on the [*README.md* of the *foodfy* repository](https://github.com/fernandoroa/foodfy_rs_challenge)

The `db_foodfy` folder is meant to create the db for the docker db image.

The `data.json` file is kept for the record only; now the app uses a database, see `docker-compose.yml`

