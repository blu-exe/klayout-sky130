# Use the base image from the desktop-lite feature
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install project-specific dependencies
RUN apt-get update && apt-get install -y \
    klayout git wget \
    && apt-get clean

# Clone the Sky130 PDK repository
RUN git clone https://github.com/VLSIDA/chip-tutorials.git /workspaces/klayout-sky130

# Default command
CMD ["bash"]
