extends Window

var data: Dictionary

@onready var this: Window = $"."
@onready var console: Console = get_node("/root/Editor/Interface/Log")

func _ready() -> void:
	about_to_popup.connect(_on_popup)
	close_requested.connect(_on_close_requested)


func _on_popup() -> void:
	data.clear()
	console.log_string("Started Project Creator", Console.LogType.Info)

func _on_close_requested() -> void:
	console.log_string("Cancelled Project Creator", Console.LogType.Info)
	hide()
