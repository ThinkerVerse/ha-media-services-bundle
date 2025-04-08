#!/bin/bash
set -e

BUILD_ARCH="$1"
BUILD_FROM="homeassistant/${BUILD_ARCH}-base:latest"

case "$BUILD_ARCH" in
    aarch64|amd64|armhf|armv7|i386)
        echo "Building for $BUILD_ARCH"
        ;;
    *)
        echo "Error: Unsupported architecture $BUILD_ARCH"
        exit 1
        ;;
esac

# Create build directory
mkdir -p build
cp -r rootfs Dockerfile docker-compose.yml build/

# Build the Docker image
docker build \
    --build-arg BUILD_FROM="$BUILD_FROM" \
    -t "ghcr.io/thinkerverse/ha-media-services-bundle:$BUILD_ARCH" \
    build

# Push the image
if [[ "$2" == "--push" ]]; then
    echo "Pushing image to GitHub Container Registry"
    docker push "ghcr.io/thinkerverse/ha-media-services-bundle:$BUILD_ARCH"
fi