# -- Contains Global Preferences for Syncra Engine --

extends Node

enum THEME {
	DARK,
	LIGHT,
	SYSTEM
}

enum AUDIO_FORMAT {
	OGG,
	WAV,
	MP3,
	AIFF,
}

enum WAVEFORM_RENDERING_DETAIL {
	LOW,
	MEDIUM,
	HIGH,
	ULTRA
}

enum MOUSE_SCROLL_BEHAVIOUR {
	ZOOM,
	SCROLL_TIMELINE
}

enum SNAP_PRECISION {
	FOURTHS,
	EIGHTHS,
	SIXTEENTHS,
	THIRTYSECONDS,
	SIXTYFOURTHS,
}

enum DEBUG_LOG_LEVEL {
	ERROR,
	WARNING,
	INFO,
	DEBUG
}

# - General Settings -

var theme: THEME = THEME.DARK # The theme that Syncra Uses
var autosave_interval: float = 300 # How frequently Syncra autosaves your projects (seconds)
var confirm_on_exit: bool = true # Whether Syncra should warn you when qutting with unsaved changes
var show_tooltips: bool = true # Whether or not to show tooltips
var recent_projects_limit: int = 5 # How many recent projects to track. 15 max

# - Audio Settings -

var default_audio_format: AUDIO_FORMAT = AUDIO_FORMAT.OGG # Preferred export format for audio
var audio_latency_compensation: int = 0 # Offset for audio latency issues (milliseconds)
var waveform_quality: WAVEFORM_RENDERING_DETAIL = WAVEFORM_RENDERING_DETAIL.MEDIUM # Detail level for Waveform/Spectrogram Rendering

# - Input Setings -

var mouse_scroll_behaviour: MOUSE_SCROLL_BEHAVIOUR = MOUSE_SCROLL_BEHAVIOUR.SCROLL_TIMELINE # Default behaviour for scrolling

# - Charting Settings -

var default_bpm: int = 120 # Default BPM for new charts
var default_time_signature: String = "4/4" # Used for new timelines
var default_snap_precision: SNAP_PRECISION = SNAP_PRECISION.FOURTHS # Default snap precision
var show_note_labels: bool = false # Display note types/times next to notes
var ghost_note_opacity: int = 30 # Transparency for previewed/uncofirmed notes

# - Visuals Settings -

var enforce_fps_limit: bool = true # If disabled, editor FPS will be uncapped
var editor_fps_limit: int = 60 # Ignored if enforce_fps_limit is false
var use_hidpi: bool = false # Enables sharp UI on HiDPI displays
var grid_line_color: Color = Color8(255, 255, 255, 125) # Default grid line color

# - Plugins Settings -

var plugins_enabled: bool = false # Toggles plugins. Requires Editor Restart
var plugin_folder_path: String = "/Syncra/Plugins"
var autoload_last_plugin_state: bool = false # Restore plugin UI when reopening projects

# - Advanced Settings -

var dev_tools: bool = true # Show dev/debug panels in the UI
var log_level: DEBUG_LOG_LEVEL = DEBUG_LOG_LEVEL.ERROR
var show_performance_stats: bool = false # Show FPS, memory usage, etc.
var safe_mode: bool = false # Disable plugins, audio, custom rendering on launch

# - Test Variables -

var pref_test := "pref test lmao"
