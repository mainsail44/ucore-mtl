#!/usr/bin/bash

set ${SET_X:+-x} -eou pipefail

# Metalvisor Repo (Fedora 39)
tee /etc/yum.repos.d/metalvisor.repo <<'EOF'
[metalvisor]
name=MTL Packages - Fedora 39
baseurl=https://download.fedoraproject.org/pub/fedora/linux/releases/39/Everything/$basearch/os/
enabled=1
gpgcheck=1
gpgkey=https://fedoraproject.org/static/fedora.gpg
EOF


# Metalvisor Packages
METALVISOR_PACKAGES=(
    binutils
    edk2-ovmf
    rclone
    socat
    swtpm
    ovn
    ovn-central
    ovn-host
    openvswitch
    pciutils
    go1.24
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
