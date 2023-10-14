geometry.ostis
==============

Main repository for OSTIS Geometry

## Run documentation

```sh
#Terminal
cd geometry.ostis
pip3 install mkdocs markdown-include mkdocs-material mkdocs-i18n
mkdocs serve
```
Then open http://127.0.0.1:8002/ in your browser

## Installation
```sh
#Terminal
git clone https://github.com/MakarenkoAI/geometry.ostis.git --recursive
cd geometry.ostis
git checkout feat/new_version
cd scripts
./install_platform.sh

```
 ## Running
```sh
# Launch knowledge processing machine
./scripts/run_sc_server.sh
# *in another terminal*
# Launch semantic web interface at localhost:8000
./scripts/run_sc_web.sh
```
Then open localhost:8000