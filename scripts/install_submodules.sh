#!/usr/bin/env bash
set -eo pipefail
source "$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)/set_vars.sh"

"${PLATFORM_SUBMODULE_SCRIPTS_PATH}/install_sc_machine.sh"
"${PLATFORM_SUBMODULE_SCRIPTS_PATH}/install_scp_machine.sh"
"${PLATFORM_SUBMODULE_SCRIPTS_PATH}/install_ims_ostis_kb.sh"
"${PLATFORM_SUBMODULE_SCRIPTS_PATH}/install_sc_web.sh"

echo "submodules were successfully installed"
