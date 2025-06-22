# Syncra Engine Documentation

Welcome to the Syncra Engine Docs! Here, you can find a plethora of information
about the Syncra Suite of Plugins and Software.

## What is Syncra?

Syncra Engine, or just Syncra, is a Rhythm Game Level Editing Toolset made in Godot Engine 4.x.

Most Rhythm Game Level Editors are proprietary and designed specifically for that game, and while
this is typically acceptable as most rhythm games have custom mechanics that can't be charted for
in a more generic tool, when it comes to game engines, having to build an entire charting tool from
scratch is VERY time consuming and eats up valuable development time (believe me, I know from experience).

Syncra Engine intends to solve this problem by providing developers with a host of tools and systems
to jumpstart their Rhythm Games without the needing to reinvent the wheel again and again.

## Key Features

Syncra, by design, is a level editing tool for Rhythm Games, new or existing, but it also comes with
some very powerful QoL tools and other tools designed to make working in teams easier.

- Global Rhythm Charting Editor: Time-based event charting with beat snapping, zooming, waveform display and audio sync.
- Modular Event System: Define, trigger and export custom code events across different engines.
- Flexible Timeline and Layers: Insert audio events, visual events, gameplay markers and sync cues on distinct layers.
- Custom `.syncra` File Format: Export charts into structured project archives for engine-agnostic use.
- Cross-Engine Exporters: Built-in exporters for Unity, Unreal, Godot, Bevy, and more.
- Customizable Preferences: Full UI/UX customization, themes, snapping, audio settings and more.
- Plugin Architecture: Extend editor functionality using GDScript or your own plugins.

## Supported Engines

!!! info
    Currently, at this stage of development, there are no integration packages available. Once we have them ready, we
    will make sure to publish them as quickly as possible!

While Syncra does try to make integration into most popular engines easy and simple, we obviously cannot support
every kind of Game Engine in existence. As such, we've tried to focus on some of the most commonly used ones.

- Unity Engine (C#)
- Godot Engine (GDScript)
- GameMaker (GML)