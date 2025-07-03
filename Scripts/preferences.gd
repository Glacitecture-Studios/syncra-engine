# -- Contains Global Preferences for Syncra Engine --
extends Window

func _ready() -> void:
	close_requested.connect(_on_close)

func _on_close() -> void:
	hide()
