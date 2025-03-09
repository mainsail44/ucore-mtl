#!/bin/bash

set -ouex pipefail

echo "::group:: ===Server Packages==="

METALVISOR_PACKAGES=(
    ovn
    ovn-central
    ovn-host
    openvswitch
    nats-server.x86_64
)

    # golang-github-nats-io-devel.noarch \
    # golang-github-nats-io-jwt-2.x86_64 \
    # golang-github-nats-io-jwt-devel.noarch \
    # golang-github-nats-io-nkeys.x86_64 \
    # golang-github-nats-io-nkeys-devel.noarch \
    # golang-github-nats-io-server-devel.noarch \
    # golang-github-nats-io-streaming-server.x86_64 \
    # golang-github-nats-io-streaming-server-devel.noarch 

# Install Metalvisor-related packages
dnf5 install -y "${METALVISOR_PACKAGES[@]}"

echo "::endgroup::"
