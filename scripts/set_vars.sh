#!/usr/bin/env bash
set -eo pipefail

ROOT_PATH=$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && cd .. && pwd)

export GEOMETRY_PATH="${APP_ROOT_PATH:-${ROOT_PATH}}"

export CONFIG_PATH="${CONFIG_PATH:-${GEOMETRY_PATH}/geometry.ini}"
export REPO_PATH="${REPO_PATH:-${GEOMETRY_PATH}/repo.path}"
export BINARY_PATH="${BINARY_PATH:-${GEOMETRY_PATH}/bin}"

export PLATFORM_PATH="${PLATFORM_PATH:-${GEOMETRY_PATH}/ostis-web-platform}"

export SC_WEB_REPO="${SC_WEB_REPO:-https://github.com/ostis-ai/sc-web.git}"
export SC_WEB_BRANCH="${SC_WEB_BRANCH:-main}"
export SC_WEB_COMMIT="${SC_WEB_COMMIT:-"17aa0ca9912021119c2a67ba70e355c8dff35082"}"

export SC_MACHINE_REPO="${SC_MACHINE_REPO:-https://github.com/ostis-ai/sc-machine.git}"
export SC_MACHINE_BRANCH="${SC_MACHINE_BRANCH:-main}"
export SC_MACHINE_COMMIT="${SC_MACHINE_COMMIT:-"d9b4ef25e39ece566d1b5f0931b8d2f3354542ad"}"

export SCP_MACHINE_REPO="${SCP_MACHINE_REPO:-https://github.com/ostis-ai/scp-machine.git}"
export SCP_MACHINE_BRANCH="${SCP_MACHINE_BRANCH:-main}"
export SCP_MACHINE_COMMIT="${SCP_MACHINE_COMMIT:-"ee177932acc70680e04858c232378bd52b3b5ecf"}"

export SC_COMPONENT_MANAGER_REPO="${SC_COMPONENT_MANAGER_REPO:-https://github.com/ostis-ai/sc-component-manager.git}"
export SC_COMPONENT_MANAGER_BRANCH="${SC_COMPONENT_MANAGER_BRANCH:-main}"
export SC_COMPONENT_MANAGER_COMMIT="${SC_COMPONENT_MANAGER_COMMIT:-"b82f62f59dbce6cc9b611714a4b4cdc3c6e33a43"}"

if [[ -d "${PLATFORM_PATH}" ]];
then
  source "${PLATFORM_PATH}/scripts/set_vars.sh"     
fi
