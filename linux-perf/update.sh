#!/usr/bin/env bash
#
# This script file generates Dockerfile for different architectures

set -eu -o pipefail

SOURCE_FOLDERS=(debian-python3 debian-slim)
ARCHS=(amd64 arm64v8)

for folder in "${SOURCE_FOLDERS[@]}"; do
    dockerfile="${folder}"/Dockerfile

    for arch in "${ARCHS[@]}"; do
        arch_dockerfile="${dockerfile}"-"${arch}"
        cp "${dockerfile}" "${arch_dockerfile}"
        sed -i "s/FROM *\\([[:alnum:]]*\\):/FROM ${arch}\\/\\1:/" "$arch_dockerfile"
    done
done
