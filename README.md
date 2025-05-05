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

Download project

```sh
#Terminal
git clone https://github.com/ostis-apps/geometry.ostis.git --recursive
cd geometry.ostis
git checkout develop
cd scripts
./install_platform.sh

```

Install pipx using [**pipx installation guide**](https://pipx.pypa.io/stable/installation/) if not already installed.

Ensure you are using **CMake version 3.24** or newer. Verify your version with:

```sh
cmake --version
```

To upgrade CMake, run:

```sh
# Use pipx to install cmake if not already installed
pipx install cmake
pipx ensurepath
# relaunch your shell after installation
exec $SHELL
```

Install Ninja generator for CMake, to use sc-machine CMake presets:
```sh
# Use pipx to install ninja if not already installed
pipx install ninja
pipx ensurepath
# relaunch your shell after installation
exec $SHELL
```

Install Conan, to build project with Conan-provided dependencies:

```sh
# Use pipx to install conan if not already installed
pipx install conan
pipx ensurepath
# relaunch your shell after installation
exec $SHELL
```

Install and build submodules:

```sh
./install_platform.sh

```

Build knowledge base

```sh
cd scripts 
./build_kb.sh 
```

## Running
Start project
```sh
cd scripts 
./run_sc_machine.sh 
```
Start web-server
```sh
cd scripts 
./run_sc_web.sh   
```
Then open localhost:8000

 ## Build
```sh
./scripts/build_kb.sh
./scripts/build_submodules.sh
```
