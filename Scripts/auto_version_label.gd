extends Label

@export var suffix: String = ""
@export var prefix: String = ""

func _ready() -> void:
	var preset = ConfigFile.new()
	preset.load("res://export_presets.cfg")
	var version = ProjectSettings.get_setting("application/config/version")
	text = suffix + version + prefix
