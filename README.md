# Hyak Convenience scripts
Personal Convenience scripts for logging into UW's hyak cluster using 1Password CLI and expect.

Note that you must have a valid login to use these scripts successfully and they DO NOT bypass 2fa. In order to login or mount with these scripts you will still need your phone and to click the Duo notification.

# Setup

You need to have the [1Password CLI](https://developer.1password.com/docs/cli/) setup with your UW net ID password in a vault that is accessible.
These scripts rely on 1Password's `op` tool being logged in at time of use.

You will need to edit expect.exp to look up the appropriate item. You will need to find the `op://` reference that loads up your password and is usable with `op read` for things to work.

# Usage

`./hyak-login-shell.sh [username]`  puts you into an interactive shell on klone

`./hyak-compute-shell.sh [username] [group]` puts you on an interactive shell on a compute node

`./hyak-mount-home.sh [username]` mounts your home directory to /mnt/hyak with sshfs

If you want to run the scripts without arguments, you should change the default args in the script from my username and group to your own.
