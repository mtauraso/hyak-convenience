#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

if [[ ! -v EXPECT_WRAPPED ]]; then
	exec env ./expect.exp $0 "$@"
fi

USER=${1:-'mtauraso'}

sshfs -o default_permissions,idmap=user $USER@klone.hyak.uw.edu:/mmfs1/home/$USER /mnt/hyak

