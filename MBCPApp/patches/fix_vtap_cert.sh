#!/usr/bin/env bash
# PATCHNAME: Fix VTAP certificate
# MAXVER:
# MINVER:
# shellcheck disable=SC1091
. "$DIRPATH"/common.sh

info "Helpful for fixing outdated certificate from older app verison, like v6.4.73 or older"
info "Allow logging in again in older app."
info "Not needed for newer app version (like v6.4.94)"

# What is [firmware] and [profile]?
# It contains the firmware and certificate for VTAP to communicate with the app connection
# Both [firmware] and [profile] is encrypted with base64 format.
# We do not provide it in the project source, but you can get it from the app itself, in [assets] folder.

nofwfound() {
	err "no VTAP firmware in [fixcert] folder found!"
	info "copy [firmware] and [profile] file to [fixcert] folder to continue."
	info "[firmware] and [profile] can be found in [assets], please find from newer or older app."
	info "recommended app : v6.4.94 for fixing v6.4.67 ~ v6.4.91"
	info "and v6.4.75 for v6.4.92+ for revert old detection behavior."
	exit 1
}

mkdir -p "$DIRPATH"/fixcert/

[ ! -f "$DIRPATH"/fixcert/firmware ] && nofwfound

[ ! -f "$DIRPATH"/fixcert/profile ] && nofwfound

# fw
cp -f "$DIRPATH"/fixcert/firmware "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/

# profile
cp -f "$DIRPATH"/fixcert/profile "$DIRPATH"/mbapk/mbapk_unpacked/root/assets/

info "Remove [firmware] and [profile] file from [/data/data/com.mbmobile/files] or clear app data"
info "If the app still keep crashing or throwing expired certificate screen or the detection is still the same."
