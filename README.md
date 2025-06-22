![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/WinterBlox/syncra-engine/total?color=355676)
![GitHub Repo stars](https://img.shields.io/github/stars/WinterBlox/syncra-engine)


## Table of Contents
1. [Features](#features)
2. [Quick Start Guide](#quick-start-guide)
    1. [Installation](#1-installation)
    2. [Making a Project](#2-making-a-project)
    3. [Using the Editor](#3-using-the-editor)
    4. [Exporting](#4-exporting-your-syncra-project)
    5. [Game Engine Setup Pt.1](#5-importing-into-your-game-engine)
    6. [Game Engine Setup Pt.2](#6-setting-up-in-engine)
3. [Syncra Archive Overview](#file-format-overview)
4. [Community](#community)
5. [License](#license)

# Syncra Engine

**Syncra Engine** is a cross-platform, open-source rhythm game charting and scripting engine built in **Godot Engine 4.x**. It is designed to help developers create complex rhythm game experiences with ease and export them to a variety of game engines including Unity, Unreal, Godot, Bevy, and more.

## Planned Features
Features marked with an :x: are not implemented yet.

- :x: **Global Rhythm Charting Editor** — Time-based event charting with beat snapping, zooming, waveform display, and audio sync.
- :x: **Modular Event System** — Define, trigger, and export custom code events across engines.
- :x: **Flexible Timeline and Layers** — Insert audio events, visual events, gameplay markers, and sync cues on distinct layers.
- :x: **Custom `.syncra` File Format** — Export charts into structured project archives for engine-agnostic use.
- :x: **Cross-Engine Exporters** — Built-in exporters for Unity (C#), Unreal (C++), Godot (GDScript), Bevy (Rust), and more.
- :x: **Customizable Preferences** — Full UI/UX customization, themes, snapping, audio settings, and more.
- :x: **Plugin Architecture** — Extend editor functionality using GDScript or your own plugins.

## Quick Start Guide:
#### NOTE: Please refer to the Wiki for a more detailed, in-depth guide on each tool this engine has to offer

**This section is currently empty due to a lack of a working build at the moment. Please wait for a build to release, this section will probably be updated by then**

## File Format Overview

If you haven't noticed already, the `.syncra` file format is a zip-based archive format.

It contains:
- `project.json` Metadata and Config
- `charts/`
    - `example-syncra_chart.json` - Timeline data
- `audio/` - Original audio file and any other audio files
- `export/` - Engine-specific code files

## Community

We're currently in the process of setting up a Discord Server where you can discuss the Syncra Family of Applications!
Join us once the engine hits beta for a special role!

## License

This projet is licensed under the MIT License. (see LICENSE.md)
