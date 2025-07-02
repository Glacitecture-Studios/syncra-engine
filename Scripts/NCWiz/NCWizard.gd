extends Window

var data: Dictionary

@onready var console: Console = get_node("/root/Editor/Interface/Log")

func _ready() -> void:
	about_to_popup.connect(_on_popup)


func _on_popup() -> void:
	data.clear()
	console.log_string("Started Project Creator", Console.LogType.Info)
