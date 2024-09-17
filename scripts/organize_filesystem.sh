#!/bin/bash

# Define base directories
BASE_DIR="/"
ROOT_DIR="$BASE_DIR/root"
SYS_DIR="$BASE_DIR/sys"
USR_DIR="$BASE_DIR/usr"
ETC_DIR="$BASE_DIR/etc"
VAR_DIR="$BASE_DIR/var"

# Define subdirectories under /sys
SYS_BIN="$SYS_DIR/bin"
SYS_SBIN="$SYS_DIR/sbin"
SYS_DEV="$SYS_DIR/dev"
SYS_LIB="$SYS_DIR/lib"
SYS_LIB64="$SYS_DIR/lib64"
SYS_PROC="$SYS_DIR/proc"
SYS_RUN="$SYS_DIR/run"
SYS_BOOT="$SYS_DIR/boot"
SYS_SYS="$SYS_DIR/sys"

# Define subdirectories under /usr
USR_BIN="$USR_DIR/bin"
USR_LIB="$USR_DIR/lib"
USR_SBIN="$USR_DIR/sbin"
USR_LOCAL="$USR_DIR/local"
USR_SHARE="$USR_DIR/share"

# Define subdirectories under /etc
ETC_OPT="$ETC_DIR/opt"
ETC_SRV="$ETC_DIR/srv"

# Define subdirectories under /var
VAR_LOG="$VAR_DIR/log"
VAR_TMP="$VAR_DIR/tmp"
VAR_CACHE="$VAR_DIR/cache"
VAR_SPOOL="$VAR_DIR/spool"
VAR_MAIL="$VAR_DIR/mail"

# Create the directory structure
mkdir -p "$ROOT_DIR"
mkdir -p "$SYS_BIN" "$SYS_SBIN" "$SYS_DEV" "$SYS_LIB" "$SYS_LIB64" "$SYS_PROC" "$SYS_RUN" "$SYS_BOOT" "$SYS_SYS"
mkdir -p "$USR_BIN" "$USR_LIB" "$USR_SBIN" "$USR_LOCAL" "$USR_SHARE"
mkdir -p "$ETC_OPT" "$ETC_SRV"
mkdir -p "$VAR_LOG" "$VAR_TMP" "$VAR_CACHE" "$VAR_SPOOL" "$VAR_MAIL"

# Move directories to new locations
# Adjust these paths as needed based on your actual system configuration
mv "$BASE_DIR/bin" "$SYS_BIN" 2>/dev/null
mv "$BASE_DIR/sbin" "$SYS_SBIN" 2>/dev/null
mv "$BASE_DIR/dev" "$SYS_DEV" 2>/dev/null
mv "$BASE_DIR/lib" "$SYS_LIB" 2>/dev/null
mv "$BASE_DIR/lib64" "$SYS_LIB64" 2>/dev/null
mv "$BASE_DIR/proc" "$SYS_PROC" 2>/dev/null
mv "$BASE_DIR/run" "$SYS_RUN" 2>/dev/null
mv "$BASE_DIR/boot" "$SYS_BOOT" 2>/dev/null
mv "$BASE_DIR/sys" "$SYS_SYS" 2>/dev/null

mv "$BASE_DIR/usr/bin" "$USR_BIN" 2>/dev/null
mv "$BASE_DIR/usr/lib" "$USR_LIB" 2>/dev/null
mv "$BASE_DIR/usr/sbin" "$USR_SBIN" 2>/dev/null
mv "$BASE_DIR/usr/local" "$USR_LOCAL" 2>/dev/null
mv "$BASE_DIR/usr/share" "$USR_SHARE" 2>/dev/null

mv "$BASE_DIR/etc/opt" "$ETC_OPT" 2>/dev/null
mv "$BASE_DIR/etc/srv" "$ETC_SRV" 2>/dev/null

mv "$BASE_DIR/var/log" "$VAR_LOG" 2>/dev/null
mv "$BASE_DIR/var/tmp" "$VAR_TMP" 2>/dev/null
mv "$BASE_DIR/var/cache" "$VAR_CACHE" 2>/dev/null
mv "$BASE_DIR/var/spool" "$VAR_SPOOL" 2>/dev/null
mv "$BASE_DIR/var/mail" "$VAR_MAIL" 2>/dev/null

# Display the new directory structure
echo "Directory structure organized under /:"
tree "$BASE_DIR"
