#!/usr/bin/env bash
set -eo pipefail

CURRENT_DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)

API_LOGIC_PATH="${CURRENT_DIR}/../sc-web/server/handlers/api_logic.py"

# Backup the original filestat
cp "${API_LOGIC_PATH}" "${API_LOGIC_PATH}.bak"

# Replace the language code in api_logic.py
sed -i "s/self\.keynodes\[KeynodeSysIdentifiers\.lang_ru\.value\]/self.keynodes[KeynodeSysIdentifiers.lang_en.value]/" "${API_LOGIC_PATH}"
sed -i "s/'User language: {KeynodeSysIdentifiers\.lang_ru\.value}'/'User language: {KeynodeSysIdentifiers.lang_en.value}'/" "${API_LOGIC_PATH}"

echo "Default language changed to English"
