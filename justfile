# Show available recipes
[private]
default:
    @just --list

# Installation for MSI GE60 2PL
msi:
    sudo ./scripts/install-msige602pl

# Optimize DNF; `just dnf repo` also enables RPM Fusion and pins the mirrors
dnf task="":
    ./scripts/03-setup-dnf {{task}}

# Enroll the akmods Secure Boot MOK key
enroll-key:
    sudo ./scripts/enroll-secure-key

# Hardware-aware GPU drivers (NVIDIA / AMD / Intel)
setup-gpu:
    sudo ./scripts/07-setup-gpu

# Swap ffmpeg-free for full FFmpeg and install @multimedia
swap-ffmpeg:
    sudo ./scripts/05-swap-ffmpeg
