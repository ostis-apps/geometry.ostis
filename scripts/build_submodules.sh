#!/usr/bin/env bash
set -eo pipefail
source "$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)/set_vars.sh"

"${GEOM_SUBMODULE_SCRIPTS_PATH}/build_sc_machine.sh"
"${GEOM_SUBMODULE_SCRIPTS_PATH}/build_scp_machine.sh"
"${GEOM_SUBMODULE_SCRIPTS_PATH}/build_sc_web.sh"

echo "submodules were built successfully"
