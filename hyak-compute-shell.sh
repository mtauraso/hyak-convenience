#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

if [[ ! -v EXPECT_WRAPPED ]]; then
	SCRIPT_FILE=$( readlink -f -- "$0")
	SCRIPT_DIR=$(dirname -- "$SCRIPT_FILE")
	exec env $SCRIPT_DIR/expect.exp $SCRIPT_FILE "$@"
fi


TIMEOUT="1:00:00"
MEM="4G"
CORES=2

USERNAME=${1:-$USER}
GROUP=${2:-'stf'}

ssh -tt $USERNAME@klone.hyak.uw.edu salloc -A $GROUP -p compute -N 1 -c $CORES --mem=$MEM --time=$TIMEOUT

