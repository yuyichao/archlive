#!/bin/bash
#
# util.sh: common functions 
# This file is part of Yaourt (http://archlinux.fr/yaourt-en)

# Since we use some associated arrays, this file should be included from
# outside a function.

SUDONOVERIF=0
SUDOINSTALLED=0
CLEANUP=()
ERROR_PKGS=()
declare -A LOADEDLIBS=()

type -p sudo &> /dev/null && SUDOINSTALLED=1
type -t gettext &> /dev/null || { gettext () { echo "$@"; }; }

_gettext ()
{
	local str=$1; shift
	printf "$(gettext "$str")" "$@" 
}

die() {	exit ${1:-0}; }

# Called on exit
# CLEANUP is an array of commands to be run at exit.
cleanup()
{
	local line
	for line in "${CLEANUP[@]}"; do eval $line; done
}
trap cleanup 0

# explode_args ($arg1,...)
# -ab --long -> -a -b --long
# set $OPTS
explode_args()
{
	unset OPTS
	local arg=$1
	while [[ $arg ]]; do
		[[ $arg = "--" ]] && OPTS+=("$@") && break;
		if [[ ${arg:0:1} = "-" && ${arg:1:1} != "-" ]]; then
			OPTS+=("-${arg:1:1}")
			(( ${#arg} > 2 )) && arg="-${arg:2}" || { shift; arg=$1; }
		else
			OPTS+=("$arg"); shift; arg=$1
		fi
	done
}

manage_error() { ERROR_PKGS+=("$1"); return 1; }

# Load library but never reload twice the same lib
loadlibrary()
{
	while [[ $1 ]]; do
		((LOADEDLIBS[$1])) && return 0
		if [[ ! -r "/usr/lib/yaourt/$1.sh" ]]; then
			error "$1.sh file is missing"
			die 1
		fi
		. "/usr/lib/yaourt/$1.sh" || warning "problem in $1.sh library"
		LOADEDLIBS[$1]=1
		shift
	done
}

# Check if sudo is allowed for given command
is_sudo_allowed()
{
	if (( SUDOINSTALLED )); then
		(( SUDONOVERIF )) && return 0
		sudo -nl "$@" &> /dev/null || \
			(sudo -v && sudo -l "$@") &>/dev/null && return 0
	fi
	return 1
}

fake_sudo()
{
	local errorfile=$(mktemp -u --tmpdir="$YAOURTTMPDIR")
	local cmd=()
	while [[ $1 ]]; do
		printf -varg "%q" "$1"
		cmd+=("$arg")
		shift
	done
	for i in 1 2 3; do
		su --shell=$BASH --command "${cmd[*]} || touch $errorfile"
		(( $? )) && [[ ! -f "$errorfile" ]] && continue
		[[ -f "$errorfile" ]] && return 1
		return 0
	done
	return 1
}
# Run $* as root using sudo or su
launch_with_su()
{
	if is_sudo_allowed "$@"; then
		sudo "$@"
	else
		fake_sudo "$@"
	fi
}

# Check array item existence (from makepkg)
# in_array ($needle, $array)
in_array() {
	local needle=$1; shift
	[[ "$1" ]] || return 1 # Not Found
	local item
	for item in "$@"; do
		[[ "$item" = "$needle" ]] && return 0 # Found
	done
	return 1 # Not Found
}

# Check directory write permissions and set a cannonical name
# check_dir ($var)
#   $var : name of variable containing directory
check_dir()
{
	[[ ! -d "${!1}" ]] && { error "${!1} $(gettext 'is not a directory')"; return 1; }	
	[[ ! -w "${!1}" ]] && { error "${!1} $(gettext 'is not writable')"; return 1; }	
	eval $1'="$(readlink -e "${!1}")"'	# get cannonical name
	return 0
}

# Check/init useful paths
init_paths()
{
	check_dir TMPDIR || die 1
	YAOURTTMPDIR="$TMPDIR/yaourt-tmp-$(id -un)"
	mkdir -p "$YAOURTTMPDIR" || check_dir YAOURTTMPDIR || die 1
	(( EXPORT )) && [[ $EXPORTDIR ]] && { check_dir EXPORTDIR || die 1; }
	parse_pacman_conf
}

# Define programs arguments
A_PS=1   # pacman sync
A_M=2    # makepkg
A_PQ=4   # pacman query
A_PC=8   # pacman conf
A_PKC=16 # package-query
A_CC=32  # curl opt
unset PACMAN_S_ARG MAKEPKG_ARG PACMAN_Q_ARG PACMAN_C_ARG \
      PKGQUERY_C_ARG CURL_C_ARG
# Usage: program_arg ($dest, $arg)
program_arg ()
{
	local dest=$1; shift
	(( dest & A_PS ))  && PACMAN_S_ARG+=("$@")
	(( dest & A_M ))   && MAKEPKG_ARG+=("$@")
	(( dest & A_PQ ))  && PACMAN_Q_ARG+=("$@")
	(( dest & A_PC ))  && PACMAN_C_ARG+=("$@")
	(( dest & A_PKC )) && PKGQUERY_C_ARG+=("$@")
	(( dest & A_CC ))  && CURL_C_ARG+=("$@")
}

# programs call with command line options
pacman_parse () { LC_ALL=C pacman "${PACMAN_C_ARG[@]}" "$@"; }
pacman_out () { $PACMAN "${PACMAN_C_ARG[@]}" "$@"; }
pkgquery () { package-query "${PKGQUERY_C_ARG[@]}" "$@"; }
curl_fetch () { curl "${CURL_C_ARG[@]}" "$@"; }

# Run editor
# Usage: run_editor ($file, $default_answer)
# 	$file: file to edit 
# 	$default_answer: 0: don't ask	1 (default): Y	2: N
run_editor ()
{
	local edit_cmd
	local file="$1"
	local default_answer=${2:-1}
	local answer_str=" YN"
	local answer='Y'
	if (( default_answer )); then
		prompt "$(_gettext 'Edit %s ?' "$file") $(yes_no $default_answer) $(gettext '("A" to abort)')"
		local answer=$(userinput "YNA" ${answer_str:$default_answer:1})
		echo
		[[ "$answer" = "A" ]] && msg "$(gettext 'Aborted...')" && return 2
		[[ "$answer" = "N" ]] && return 1
	fi
	if [[ ! "$EDITOR" ]]; then
		echo -e "$CRED$(gettext 'Please add \$EDITOR to your environment variables')"
		echo -e "$C0$(gettext 'for example:')"
		echo -e "${CBLUE}export EDITOR=\"vim\"$C0 $(gettext '(in ~/.bashrc)')"
		echo "$(gettext '(replace vim with your favorite editor)')"
		echo
		prompt2 "$(_gettext 'Edit %s with: ' "$file")"
		read -e EDITOR
		echo
	fi
	[[ "$(basename "$EDITOR")" = "gvim" ]] && edit_cmd="$EDITOR --nofork" || edit_cmd="$EDITOR"
	( $edit_cmd "$file" )
	wait
}

# Main init
. '/usr/lib/yaourt/io.sh'
. '/usr/lib/yaourt/pacman.sh'
LOADEDLIBS+=([util]=1 [io]=1 [pacman]=1)
shopt -s extglob
unset ABS_REPO
# General
AUTOSAVEBACKUPFILE=0
DEVELBUILDDIR='/var/abs/local/yaourtbuild'
DEVEL=0
FORCEENGLISH=0
FORCE=0
SUDONOVERIF=0 
# AUR
AURURL='http://aur.archlinux.org'
AURCOMMENT=5
AURDEVELONLY=0
AURSEARCH=1
AURUPGRADE=0
AURVOTE=1
# BUILD
EXPORT=0
EXPORTSRC=0
EXPORTDIR=""
# Prompt
NOCONFIRM=0
UP_NOCONFIRM=0
BUILD_NOCONFIRM=0
EDITFILES=1
NOENTER=1
# OUTPUT
USECOLOR=1
DETAILUPGRADE=1
SHOWORPHANS=1
TERMINALTITLE=1
# Command
DIFFEDITCMD="vimdiff"

[[ -r '/etc/yaourtrc' ]] && source '/etc/yaourtrc'
[[ -r ~/.yaourtrc ]] && source ~/.yaourtrc
(( FORCEENGLISH )) && export LC_ALL=C
TMPDIR=${TMPDIR:-/tmp}
check_dir TMPDIR || die 1
YAOURTTMPDIR="$TMPDIR/yaourt-tmp-$(id -un)"
# PACMANBIN is depreceated
PACMAN=${PACMAN:-$PACMANBIN}
export PACMAN=${PACMAN:-pacman}
# Add --aur-url option to package-query args
program_arg $A_PKC --aur-url "$AURURL"

# vim: set ts=4 sw=4 noet: 
