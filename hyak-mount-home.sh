#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

if [[ ! -v EXPECT_WRAPPED ]]; then
	SCRIPT_FILE=$( readlink -f -- "$0")
	SCRIPT_DIR=$(dirname -- "$SCRIPT_FILE")
	exec env $SCRIPT_DIR/expect.exp $SCRIPT_FILE "$@"
fi


USERNAME=${1:-$USER}


sshfs -o default_permissions,idmap=user $USERNAME@klone.hyak.uw.edu:/mmfs1/home/$USERNAME /mnt/hyak

