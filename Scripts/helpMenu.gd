extends PopupMenu

@onready var mainMenu: PopupMenu = $"."
@onready var aboutWindow: Window = $"About Window"
@onready var osLabel: Label = $"About Window/OS"

func _ready() -> void:
	if mainMenu:
		mainMenu.connect("id_pressed", _on_id_pressed)
		osLabel.text = "Operating System: " + OSUtils.get_pretty_os_name()
		print("You are running " + OSUtils.get_pretty_os_name())

func _on_id_pressed(id: int) -> void:
	if id == 7:
		aboutWindow.popup()
