# 🌌 Antares – AIOS Project

**Antares** is an **AIOS (Artificial Intelligence Operating System)** project –  
an **AI-powered automation layer** that transforms your OS into a fully intelligent and interactive environment.  

Built on top of [eDEX-UI](https://github.com/GitSquared/edex-ui), Antares brings a futuristic terminal-like interface combined with **AI-driven automation** to enhance productivity, control, and immersion across Linux, macOS, and Windows.  

---

## ✨ Features
- 🧠 **AI-Powered Automation** – Automates tasks and system operations intelligently.  
- 💻 **Cross-Platform Support** – Works on Linux, Windows, and macOS.  
- 🎨 **Futuristic Interface** – A cinematic, hacker-style terminal UI.  
- ⚡ **One-Command Installation (Linux)** – Install via `install.sh` with automatic architecture detection.  
- 📦 **Prebuilt Binaries** – Ready-to-use installers for Linux (`AppImage`), macOS (`.dmg`), and Windows (`.exe`).  

---

## 📦 Contents
This repository contains:
- **Linux builds** (`.AppImage`) → `x86_64`, `i386`, `armv7l`, `arm64`
- **macOS build** (`.dmg`) → Intel 64-bit
- **Windows builds** (`.exe`) → 32-bit, 64-bit, generic
- **`install.sh`** script → Smart installer for Linux (detects your CPU/OS automatically)

---

## ⚡ Installation

### 🔹 Linux
1. Clone the repository (requires Git LFS, see below):
   ```bash
   git clone https://github.com/Pushpenderrathore/Antares.git
   cd Antares
   chmod +x install.sh
   ./install.sh

Launch with:

    antares

🔹 macOS

Download and open the .dmg file, then drag Antares into Applications.
🔹 Windows

Run the appropriate .exe file:

    eDEX-UI-Windows-x64.exe → for 64-bit Windows (most modern PCs)

    eDEX-UI-Windows-ia32.exe → for 32-bit Windows

    eDEX-UI-Windows.exe → generic (largest build)

📂 Using Git LFS (Large File Storage)

Because Antares includes large binaries (>50 MB, some >100 MB), the repo uses Git LFS

.
🔹 Setup Git LFS

Linux (Debian/Ubuntu/Kali):

sudo apt update
sudo apt install git-lfs
git lfs install

macOS (Homebrew):

brew install git-lfs
git lfs install

Windows (Git Bash):

git lfs install

🔹 Clone the repository

git clone https://github.com/Pushpenderrathore/Antares.git
cd Antares

Git LFS will automatically fetch the binaries.

If you only see small pointer files like:

version https://git-lfs.github.com/spec/v1
oid sha256:1f2e7...
size 97918723

then run:

git lfs pull

🚀 Quick Start (Linux)

# Install Git LFS
sudo apt install git-lfs
git lfs install

# Clone repo and install
git clone https://github.com/Pushpenderrathore/Antares.git
cd Antares
chmod +x install.sh
./install.sh

# Launch
antares

⚠️ Notes

    GitHub blocks files >100 MB in standard Git; Git LFS is required to fetch these binaries.

    Without Git LFS, you’ll only get pointer files instead of usable executables.

    Linux users can install via the provided script, while macOS/Windows users must install manually.

📜 License

This project is based on eDEX-UI
.
Antares extends it into an AIOS (AI-powered automation system).
See original repository for license and credits.
