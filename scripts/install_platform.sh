# #!/usr/bin/env bash
# set -eo pipefail

# CURRENT_DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)
# source "${CURRENT_DIR}/formats.sh"

# cd "${CURRENT_DIR}/.." && git submodule update --init --recursive

# source "${CURRENT_DIR}/set_vars.sh"

# stage "Install ostis-web-platform"

# "${PLATFORM_PATH}/scripts/install_submodules.sh"
# "${PLATFORM_PATH}/scripts/install_dependencies.sh" --dev
# "${PLATFORM_PATH}/scripts/build_platform.sh"

# stage "ostis-platform is installed successfully"

#!/usr/bin/env bash
set -eo pipefail
source "$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)/set_vars.sh"
cd ${GEOMETRY_PATH} \
  && git clone "${PLATFORM_REPO}" --branch "${PLATFORM_BRANCH}" --single-branch \
  || { echo "OSTIS web platform wasn't installed"; exit 1; }
if [ -n "${PLATFORM_COMMIT}" ]
  then
    cd "${PLATFORM_PATH}" \
    && git checkout "${PLATFORM_COMMIT}"\
    || { echo "OSTIS web platform wasn't installed - unable to check out to the specified commit"; exit 1; }
fi

"${GEOM_SCRIPTS_PATH}/install_submodules.sh"
"${GEOM_SCRIPTS_PATH}/build_submodules.sh"
"${GEOM_SCRIPTS_PATH}/build_kb.sh"