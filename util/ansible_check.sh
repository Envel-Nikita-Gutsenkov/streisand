# shellcheck shell=bash

# This is included by the main streisand script.

# check_ansible checks that Ansible is installed on the local system
# and that it is a supported version.
function check_ansible() {
  local REQUIRED_ANSIBLE_VERSION="2.10.2"

  if ! command -v ansible > /dev/null 2>&1; then
    echo "
Streisand requires Ansible and it is not installed.
Please see the README Installation section on Prerequisites"
    exit 1
  fi
}
