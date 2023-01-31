# Hyak Convenience scripts
Personal Convenience scripts for logging into UW's hyak cluster using 1Password CLI and expect.

Note that you must have a valid login to use these scripts successfully and they DO NOT bypass 2fa. In order to login or mount with these scripts you will still need your phone and to click the Duo notification.

# Setup

You need to have the [1Password CLI](https://developer.1password.com/docs/cli/) setup with your UW net ID password in a vault that is accessible.
These scripts rely on 1Password's `op` tool being logged in at time of use.

You will need to edit expect.exp to look up the appropriate item. You will need to find the `op://` reference that loads up your password and is usable with `op read` for things to work.

# Usage

`./hyak-login-shell.sh [username]`  puts you into an interactive shell on klone.

`./hyak-compute-shell.sh [username] [group]` puts you on an interactive shell on a compute node. The settings for memory, cores, and timeout are in the script.

`./hyak-mount-home.sh [username]` mounts your home directory to /mnt/hyak with sshfs.

The scripts will default your username to $USER and group to `stf`. If you have a different username locally I recommend editing the defaults on the scripts

These scripts will work if they're symlinked into a bin directory as well.

There are no safety checks, and hyak will lock you out if you have too many failed logins in a row. Please use these tools responsibly.


