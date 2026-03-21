#!/usr/bin/env bash
# bootstrap.sh — runs on every container start (before gateway).
# Use for persistent symlinks and tool setup that can't survive container rebuilds.

set -euo pipefail

# Persist gog (Google CLI) config on the Railway volume so OAuth tokens survive redeployments.
mkdir -p /root/.config /data/.gogcli
ln -sfn /data/.gogcli /root/.config/gogcli
