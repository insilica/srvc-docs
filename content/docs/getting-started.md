---
title: Getting Started
---

# CodeSpaces or Dev Containers

The easiest way to get started is to use [srvc-template](https://github.com/insilica/srvc-template).
Click the "Use template" button on GitHub to create a new repository.

In the new repository, select "Code" > "Codespaces" > "Create codespace on main".
Or if you have [VSCode](https://code.visualstudio.com/) installed with the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension, you may open the repository in a Dev Container.

The new Codespace or container will likely take a few minutes to initialize.
The result will be a full development environment with a sample `sr.yaml` file.

Start off by changing `user@example.com` in `sr.yaml` to your email address.

[**Next >> Project Configuration**](../sr.yaml/)

# Manual Setup

1. Install the [Nix package manager](https://nixos.org/download.html) on Linux, macOS, or Windows WSL2.
1. Create a file at `~/.config/nix/nix.conf` with the contents `experimental-features = nix-command flakes`
1. Install srvc via `nix profile install github:insilica/rs-srvc`
Alternately, srvc may be installed with [Homebrew](https://brew.sh) via `brew install insilica/srvc/srvc`
1. Create a new project directory with an `sr.yaml` file. The [sr.yaml from srvc-template](https://github.com/insilica/srvc-template/blob/main/sr.yaml) is a good starting point.

Start off by changing `user@example.com` in `sr.yaml` to your email address.

[**Next >> Project Configuration**](../sr.yaml/)
