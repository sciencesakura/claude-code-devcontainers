#!/bin/sh

# https://code.claude.com/docs/en/setup#install-with-linux-package-managers
sudo wget -O /etc/apk/keys/claude-code.rsa.pub https://downloads.claude.ai/keys/claude-code.rsa.pub
echo https://downloads.claude.ai/claude-code/apk/stable | sudo tee -a /etc/apk/repositories

sudo apk add --no-cache claude-code make ripgrep

# https://github.com/go-delve/delve
go install github.com/go-delve/delve/cmd/dlv@latest
