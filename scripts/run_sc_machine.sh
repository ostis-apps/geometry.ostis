# #!/usr/bin/env bash
# set -eo pipefail

# if [ -z "${PLATFORM_PATH}" ];
# then
#   source "$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)"/set_vars.sh
# fi

# "${PLATFORM_PATH}/scripts/run_sc_machine.sh" "$@"

set -eo pipefail
source "$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)/set_vars.sh"

"${SC_MACHINE_PATH}/build/Release/bin/sc-machine" -c "${CONFIG_PATH}" \
  -e "${SC_MACHINE_PATH}/build/Release/lib/extensions;${SCP_MACHINE_PATH}/build/Debug/lib/extensions"

#run_cxx_ps.sh
