# Companion to Walkthrough of Nix Install and Setup on MacOS

This is a simple Nix MacOS flake and shows the progress and final state of the config used in the video [Walkthrough of Nix Install and Setup on MacOS](https://youtu.be/LE5JR4JcvMg).

Take a look at earlier commits to see what a really basic single file flake looks like with nix-darwin and home-manager.

## Video description

This is a live walkthrough of an install of Nix on a fresh MacOS system and a tutorial showing how to make a declarative config that will meet all of your needs on MacOS.

Steps:

1. Install of nix
2. Creation of basic flake
3. Addition of nix-darwin and home-manager
4. Initial bootstrap of config
5. Config enhancements showing linked config files and homebrew control
6. Demonstration of adding a remote flake as a package
7. Refactor of single nix file into multiple files and other simplifications

Nix example code:

* [Initial working flake](https://github.com/zmre/mac-nix-simple-example/blob/2c6465d9df0f42e279681e2c30eaf8ed998940be/flake.nix)
* [Embellished flake](https://github.com/zmre/mac-nix-simple-example/blob/502fbabcaaaf160081926498641a042995de19c2/flake.nix)
* [Final refactored version](https://github.com/zmre/mac-nix-simple-example)
# mac-nix-config

# Nix Configuration Guide

This guide explains how to use Nix configuration and provides an overview of the necessary prerequisites before starting the installation process.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Basic Nix Configuration](#basic-nix-configuration)
- [Customizing Your Configuration](#customizing-your-configuration)
- [Troubleshooting and Further Resources](#troubleshooting-and-further-resources)

## Prerequisites

Before diving into the Nix configuration, ensure that you have the following:

1. A Unix-based operating system (e.g., Linux, macOS) with Nix installed. If you haven't installed Nix yet, follow the installation instructions on the [official Nix website](https://nixos.org/download.html).
2. Basic knowledge of the Nix language, Nix expressions, and the Nix package manager. For an introduction to Nix, check out the [official Nix manual](https://nixos.org/manual/nix/stable/).

## Getting Started

Once you have Nix installed and a basic understanding of Nix concepts, you can start working with Nix configuration files. Common configuration files include:

- `configuration.nix`: For NixOS users, this file contains the system-level configuration.
- `home.nix`: For Home Manager users, this file contains user-level configuration settings and packages.
- `flake.nix`: For projects using Nix Flakes, this file defines the project dependencies, outputs, and build instructions.

## Basic Nix Configuration

To create a basic Nix configuration, follow these steps:

1. Create a new Nix file (e.g., `configuration.nix`, `home.nix`, or `flake.nix`) in your preferred text editor.
2. Define the necessary configuration settings, such as packages, services, and system settings. Refer to the Nix manual, NixOS manual, or Home Manager manual for details on available options.
3. Save the file and run the appropriate Nix command to apply the configuration:

    - For NixOS, use `sudo nixos-rebuild switch`.
    - For Home Manager, use `home-manager switch`.
    - For Nix Flakes, use `nix build` or `nix develop`, depending on your use case.

## Customizing Your Configuration

To customize your Nix configuration, follow these general steps:

1. Identify the options you want to change, such as packages, services, or system settings.
2. Look up the corresponding Nix attributes in the relevant documentation (e.g., Nix manual, NixOS manual, Home Manager manual).
3. Update your Nix configuration file with the new settings, following the syntax and conventions outlined in the documentation.
4. Save the file and apply the new configuration as described in the [Basic Nix Configuration](#basic-nix-configuration) section.

## Troubleshooting and Further Resources

If you encounter issues or need more information, consult the following resources:

- [Nix manual](https://nixos.org/manual/nix/stable/): The official manual for the Nix package manager.
- [NixOS manual](https://nixos.org/manual/nixos/stable/): The official manual for the NixOS operating system.
- [Home Manager manual](https://nix-community.github.io/home-manager/): The official manual for the Home Manager tool.
- [Nix Pills](https://nixos.org/guides/nix-pills/): A series of guides that provide a deeper understanding of Nix concepts.
- [Nix subreddit](https://www.reddit.com/r/NixOS/): A community of Nix users and developers who can help answer questions and provide guidance.
- [NixOS Discourse](https://discourse.nixos.org/): An online forum for discussing and sharing knowledge about Nix, NixOS, and related projects.

Remember that experimenting and learning from the experience is an essential part of mastering Nix. Don't hesitate to ask questions and explore various resources to enhance your understanding of the Nix ecosystem.

Good luck on your journey with Nix configuration!

