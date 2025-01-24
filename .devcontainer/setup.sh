#!/bin/bash

# Clone the Sky130 PDK repository if it doesn't already exist
if [ ! -d "/workspaces/sky130" ]; then
  echo "Cloning Sky130 PDK repository..."
  git clone https://github.com/VLSIDA/chip-tutorials.git /workspaces/sky130
else
  echo "Sky130 PDK already exists. Skipping clone."
fi

# Ensure KLayout is available in PATH (optional, depends on how it's installed)
if ! command -v klayout &> /dev/null; then
  echo "KLayout not found. Ensure it is installed correctly in the Dockerfile."
else
  echo "KLayout is ready to use."
fi

# Additional project-specific configuration or environment setup
# For example, setting environment variables (if needed):
# export MY_ENV_VAR=value

echo "Setup script completed successfully!"
