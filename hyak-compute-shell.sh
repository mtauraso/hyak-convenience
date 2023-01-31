#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

if [[ ! -v EXPECT_WRAPPED ]]; then
	exec env ./expect.exp $0 "$@"
fi

TIMEOUT="1:00:00"
MEM="4G"
CORES=2

USERNAME=${1:-'mtauraso'}
GROUP=${2:-'gwastro'}

ssh -tt $USERNAME@klone.hyak.uw.edu salloc -A $GROUP -p compute -N 1 -c $CORES --mem=$MEM --time=$TIMEOUT

