# Syncra Engine

**Syncra Engine** is a cross-platform, open-source rhythm game charting and scripting engine built in **Godot Engine 4.x**. It is designed to help developers create complex rhythm game experiences with ease and export them to a variety of game engines including Unity, Unreal, Godot, Bevy, and more.

## Features

- 🎼 **Global Rhythm Charting Editor** — Time-based event charting with beat snapping, zooming, waveform display, and audio sync.
- 🧩 **Modular Event System** — Define, trigger, and export custom code events across engines.
- 🔁 **Flexible Timeline and Layers** — Insert audio events, visual events, gameplay markers, and sync cues on distinct layers.
- 💾 **Custom `.syncra` File Format** — Export charts into structured project archives for engine-agnostic use.
- ⚙️ **Cross-Engine Exporters** — Built-in exporters for Unity (C#), Unreal (C++), Godot (GDScript), Bevy (Rust), and more.
- 🎛️ **Customizable Preferences** — Full UI/UX customization, themes, snapping, audio settings, and more.
- 🧩 **Plugin Architecture** — Extend editor functionality using GDScript or your own plugins.

---

## Quick Start Guide:
#### NOTE: Please refer to the Wiki for a more detailed, in-depth guide on each tool this engine has to offer

### 1. Installation:

**Requirements (recommended):**
- Operating System: Windows 10+ | macOS 12+ | Ubuntu 22.04+
- Graphics API: Vulkan 1.2+
- 8 GB RAM or more
- SSD (1 GB Free Space Minimum)

**Requirements (minimum):**
- Operating System: Windows 7+ | macOS 10.14+ | Ubuntu 20.04+
- Graphics API: Vulkan 1.1+
- 4 GB RAM or more
- 500 MB Free Space

Syncra Engine posts compiled binaries for Windows, macOS and Linux (debian & tar.gz), but if you decide
you want to build it from the source:

**Steps (building from source, macOS not recommended):**
> [!NOTE] You will need Godot 4 or higher to build from source.
> Building from source on macOS is not recommended, as if the project's dependencies change
> or we update the build settings, the binaries will need re-notarizing.
1. Clone the repository with Git
```bash
git clone https://perditum.com/glacitecture-studios/syncra-engine.git
```
2. Open the Godot Project in Godot 4

3. Go to Project -> Export

4. Choose the operating system you want to export for and click 'Export Project'.

> [!WARNING] If you are building for macOS:
> DO NOT CHANGE THE BUILD SETTINGS. I REPEAT. **DO. NOT. CHANGE. THE. BUILD. SETTINGS.** Syncra Engine has been specifically notarized with
> the signature that was made using the Build Settings all of our pre-made binaries are released with.
> Changing the build settings can change the signature and thus make it unrecognizable to Gatekeeper,
> therefore flagging it and making it unusable.

5. Run Syncra Engine from the location you exported

### 2. Making a Project

Upon opening the Syncra Editor, you should be graced with a wonderful main menu such as this (it might not look
exactly like this):

(image here lmao)

1. Click 'New Chart'. If this is your first time running Syncra Editor, you will be prompted
to select a directory where projects will be saved.

2. Fill in project metadata such as Name, Artist, audio file (`.ogg`, `.mp3`, `.wav`)

3. Click `Create`.

You should now be in the Syncra Editor! Congratulations. From here, the world is your oyster, but we're not done yet:

### 3. Using the Editor

There are 5 main components to the Syncra Editor:

1. Timeline
    - This is where the magic happens!
    - Here, you can click on grid lines to place notes
    - The `Insert` menu also has object creation tools.
2. Asset Browser
    - This is where all of your project's assets are stored
    - Includes sound effects, events, difficulties, scripts, etc...
3. Output
    - Displayed at the bottom, this is where custom scripts and the Syncra Engine will log errors and messages
4. Menu Bar
    - Hovering over these different buttons allows you to access the wide variety of tools that the Editor has for you to use
5. Spyglass
    - On the right is your Spyglass, your window into your notes and events. It exposes properties and information about whatever you have selected if it is marked as serializable.

You can customize playback in the `Audio` tab, adjust snap settings, playback speed or waveform visualization via `View`, and you can preview your chart with the `Test` tab.

### 4. Exporting your Syncra Project

Once you're happy with your creation, you can export it by going to `File` -> `Export` -> `.syncra (Syncra Archive)`

Here you will be prompted to select any additional export settings and a target directory.

Once ready, click `Export`.

Syncra will bundle:
- Your `project.syncra.json`
- Your chart data
- Audio, metadata, assets
- Export-ready code files

Once done, click on the popup modal at the top underneath the menu bar to open the directory containing your .syncra file.

### 5. Importing into your Game Engine

Now we get to the fun part! Importing is _slightly_ different for each supported engine, but the bottom line is:
1. Open your target game engine (Unity, Unreal, Godot, etc)
2. Import the `.syncra` archive using the engine-specific `Syncra Runtime Library` (see sec. 7)
3. Files will include timeline data and engine-specific event code.

### 6. Setting-up in-engine

Each engine requires a slightly different setup. Please refer to the Syncra Runtime Libraries for your engine of choice:
- `Unity` (C#): Partial class for `SyncraEvents`
- `Unreal` (C++): Header file and implementation
- `Godot` (GDScript): Class with callable events
- `Bevy` (Rust): Event registration with `bevy_ecs`
- `GameMaker` (GML): Events are split into archive-specific `.gml` files
- `PyGame` (Python): Class with callable `staticmethods`

## File Format Overview

If you haven't noticed already, the `.syncra` file format is a zip-based archive format.

It contains:
- `project-syncra.json` Metadata and Config
- `charts/`
    - `example-syncra_chart.json` - Timeline data
- `audio/` - Original audio file and any other audio files
- `export/` - Engine-specific code files

## Community

We're currently in the process of setting up a Discord Server where you can discuss the Syncra Family of Applications!
Join us once the engine hits beta for a special role~!

## License

This projet is licensed under the MIT License. (see LICENSE.md)