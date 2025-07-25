extends Control
class_name Console

@onready var console_text = $RichTextLabel
@onready var clear_button = $Button

var collapsed: bool = false

enum LogType { Info, Warn, Error }

func _ready() -> void:
	clear_button.pressed.connect(_on_clear)
	log_string("Console Initialized", LogType.Info)
	log_string("You are currently using a Development Preview of Syncra Engine, which is not optimized for production use. Things WILL break, problems WILL arise.", LogType.Warn)

func _on_clear() -> void:
	console_text.clear()

func log_string(l: String, t: LogType = LogType.Info) -> void:
	var td: Dictionary = Time.get_time_dict_from_system()
	var time: String = "%02d:%02d:%02d" % [ td.hour, td.minute, td.second]
	match t:
		LogType.Info:
			console_text.append_text("[" + time + "] [Info] " + l + "[br]")
			print_rich("[Syncra | Info] " + l)
		LogType.Warn:
			console_text.append_text("[color=yellow][" + time + "] [Warn] " + l + "[/color][br]")
			print_rich("[color=fefe68ff][Syncra | Warning] " + l + "[/color]")
		LogType.Error:
			console_text.append_text("[color=red][" + time + "] [Error] " + l + "[/color][br]")
			print_rich("[color=ff2332ff][Syncra | Error] " + l + "[/color]")
		_:
			console_text.append_text("[" + time + "] [Info] " + l + "[br]")
			print_rich("[Syncra | Info] " + l)

func _on_title_pressed():
	if (collapsed):
		position.y -= 85
	else:
		position.y += 85
	collapsed = not collapsed
	
