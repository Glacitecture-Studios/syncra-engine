extends Window

@onready var this: Window = $"."
@onready var os_name: Label = $Version

func _ready() -> void:
	if this:
		this.connect("close_requested", _on_close_requested)
		this.connect("go_back_requested", _on_close_requested)

func _on_close_requested():
	this.hide()
