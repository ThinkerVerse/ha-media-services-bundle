ARG BUILD_FROM
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install required packages
RUN apk add --no-cache \
    jq \
    curl \
    iptables \
    ip6tables \
    docker \
    docker-compose

# Copy data
COPY rootfs /

# Set permissions
RUN chmod a+x /etc/services.d/*/run

ENTRYPOINT ["/init"]