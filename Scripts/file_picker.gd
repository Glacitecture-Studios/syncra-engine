extends Control

@onready var inputArea: LineEdit = $Input
@onready var pickButton: Button = $Button
@onready var fDialog: FileDialog = $Button/FileDialog

func _ready() -> void:
	pickButton.pressed.connect(_on_button_pressed)
	fDialog.dir_selected.connect(_on_selected)
	fDialog.file_selected.connect(_on_selected)

func _on_button_pressed() -> void:
	fDialog.popup_centered()

func _on_selected(text: String) -> void:
	inputArea.text = text
