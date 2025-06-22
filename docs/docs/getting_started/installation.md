# Installation

!!! note
    While we try to keep this page as up-to-date as possible in regards to the latest version of the Syncra Editor, sometimes
    parts can get out of date. If something doesn't go as planned, please join our [Community Discord](https://discord.gg/v8zEVwn4QV).

Looking to use Syncra Engine for the first time? No worries! It might seem *slightly* daunting, but this page has you covered!

This page will guide you through the various steps needed to not only install Syncra Engine and it's dependencies,
but also how to build it from source!

## Getting an official release

We post pre-compiled binaries of the latest version of Syncra Engine on our [GitHub Releases](https://github.com/WinterBlox/syncra-engine/releases). Simply scroll
up to the latest version (it should already be there for you), open it and scroll down to the 'Assets' section, and then choose the version that is right for your
system.

### What's the bit on the end?

The 'bit on the end' is most likely referring to the CPU Architecture. If you don't know, different CPUs run on different Architecture, which can change what code they are capable of running. It's like trying to use an Amazon Gift Card at Best Buy; they're not compatible.

If you don't already know what CPU Architecture your PC has, there are numerous easy ways to check depending on your Operating System:

=== "Windows"
    On Windows, you can either go to `Settings -> System -> About this PC` and look for a property called Architecture, or you can run the following command in Command Prompt:
    ```bash
    echo %PROCESSOR_ARCHITECTURE% # (1)!
    ```
    
    1. This is a Windows Environment Variable that returns the architecture of the CPU on which Windows is running. Environment Variables are dynamic values that affect the behaviour of processes running in Windows. For example, if you've ever had to add an application to PATH manually, PATH is an environment variable that tells the system where to look for executable files.

=== "macOS"
    !!! note
        Currently, we do not package Syncra Engine for macOS. If you use macOS but want to use Syncra Engine, your best bet is to set up a virtual machine running
        either Windows 10+ or Linux.
    On macOS, you can either go to `About This Mac` in the **Apple** Menu, or you can run the following command in Terminal:
    ```bash
    uname -m # (1)!
    ```

    1. `uname` is a shell program found on Unix and Unix-like Operating Systems (including macOS and Linux!) that prints the name, version and other details about the current machine and the operating system running on it. The -m argument tells uname to only retrieve the Machine Architecture.

=== "Linux"
    On Linux, you can run the following command in Terminal:
    ```bash
    uname -m # (1)!
    ```

    1. `uname` is a shell program found on Unix and Unix-like Operating Systems (including macOS and Linux!) that prints the name, version and other details about the current machine and the operating system running on it. The -m argument tells uname to only retrieve the Machine Architecture.

Once you have your CPU Architecture, you can choose the correct distribution to download.

After downloading it, extract the archive somewhere memorable and simply run the executable, and voila!

## Building from Source

!!! info
    Building the project from source is not required to use Syncra Engine, but it is recommended if you want to contribute to the project or if you want to use the latest features that may not be available in the pre-compiled binaries (in other words, if you want to use the bleeding edge version of Syncra Engine).

    There are drawbacks, as in people may not be able to help you if you run into issues with the bleeding edge version, as it is not the same as the stable version. If you want to use Syncra Engine for production, we recommend using the pre-compiled binaries instead.

If you want to build Syncra Engine from source, you will need to have the following dependencies installed:

- [Godot Engine 4.x](https://godotengine.org/download) (we recommend the latest stable version)
- [Godot Engine Export Templates](https://godotengine.org/download/templates) (make sure to download the version that matches your Godot Engine version)
- [Git](https://git-scm.com/downloads) (to clone the repository)

### Cloning the Repository

To clone the Syncra Engine repository, open your terminal or command prompt and run the following command:

!!! note
    If you are on Windows or macOS, you can also use a GUI Client like GitHub Desktop or Fork.

=== "HTTPS"
    ```bash
    # In most cases, this is the recommended way to clone repositories.
    # If you have issues with this, try using SSH or the GitHub CLI.
    git clone https://github.com/WinterBlox/syncra-engine.git
    ```

=== "SSH"
    ```bash
    git clone git@github.com:WinterBlox/syncra-engine.git
    ```

=== "GitHub CLI"
    ```bash
    gh repo clone WinterBlox/syncra-engine
    ```

### Building the Project

Once you have cloned the repository, open up the project in Godot Engine. You can do this by either:
- Opening Godot Engine and selecting "Open Project", then navigating to the cloned repository.
- Dragging the `syncra-engine` folder onto the Godot Engine window.

Once the project is open, click 'Project' in the top menu, then select 'Export'. This will open the Export dialog.

!!! warning
    Make sure you do not alter the Export Presets in any way, as this can cause issues with the project. If you absolutely need to change the export settings, create a new preset instead. You can do this by clicking the 'Add' button in the Export dialog, followed by your desired platform.

    Additionally, if you are doing your own export for macOS, you will need to ensure that you have a valid Apple Developer ID and that you have set up the necessary certificates and provisioning profiles for the sake of codesigning. This is a requirement for exporting applications on macOS.

From here, simply click 'Export Project' at the bottom and choose a location to save the exported project. You can either export it as a `.zip` file or in a folder as an executable (.x86_64, .arm64, .exe, etc.) depending on your platform. Choosing the latter will export the project as both a runnable application and a `.pck` file, which contains the project data.