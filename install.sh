#!/bin/bash

# Install script for eDEX-UI
# Copies the correct build to /usr/local/bin and renames it to "antares"

set -e

# Detect OS
OS="$(uname -s)"
ARCH="$(uname -m)"

echo "Detected OS: $OS"
echo "Detected Architecture: $ARCH"

TARGET=""

case "$OS" in
    Linux)
        case "$ARCH" in
            x86_64)
                TARGET="eDEX-UI-Linux-x86_64.AppImage"
                ;;
            i386|i686)
                TARGET="eDEX-UI-Linux-i386.AppImage"
                ;;
            armv7l)
                TARGET="eDEX-UI-Linux-armv7l.AppImage"
                ;;
            aarch64|arm64)
                TARGET="eDEX-UI-Linux-arm64.AppImage"
                ;;
            *)
                echo "Unsupported Linux architecture: $ARCH"
                exit 1
                ;;
        esac
        ;;
    Darwin)
        TARGET="eDEX-UI-macOS-x64.dmg"
        echo "For macOS, please install manually by opening the DMG."
        exit 0
        ;;
    MINGW*|MSYS*|CYGWIN*|Windows_NT)
        if [[ "$ARCH" == "x86_64" ]]; then
            TARGET="eDEX-UI-Windows-x64.exe"
        else
            TARGET="eDEX-UI-Windows-ia32.exe"
        fi
        echo "For Windows, please run the installer: $TARGET"
        exit 0
        ;;
    *)
        echo "Unsupported OS: $OS"
        exit 1
        ;;
esac

echo "Installing $TARGET as /usr/local/bin/antares ..."

# Copy and set permissions
sudo cp "$TARGET" /usr/local/bin/antares
sudo chmod +x /usr/local/bin/antares

echo "Installation complete! Run with: antares"

