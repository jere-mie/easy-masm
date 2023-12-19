# Use the base image from Microsoft's devcontainers with Alpine 3.18
FROM mcr.microsoft.com/devcontainers/base:alpine-3.18

# Set environment variables for Wine
ENV WINEARCH=win64 \
    WINEVERSION=6.0

# Install Wine dependencies
RUN apk add --no-cache \
    wine \
    # wine-gecko \
    # wine-mono \
    && rm -rf /var/cache/apk/*

# Expose the wine binaries to the PATH
ENV PATH=/usr/bin/wine:$PATH

# Set the working directory
WORKDIR /workspace

# Optional: Set up a non-root user (uncomment the following lines)
# ARG USERNAME=vscode
# ARG USER_UID=1000
# ARG USER_GID=$USER_UID
# RUN groupadd --gid $USER_GID $USERNAME \
#     && useradd -s /bin/sh --uid $USER_UID --gid $USER_GID -m $USERNAME

# Optional: Switch to the non-root user (uncomment the following lines)
# USER $USERNAME

# Set the default shell for the container
SHELL ["/bin/bash", "-c"]
