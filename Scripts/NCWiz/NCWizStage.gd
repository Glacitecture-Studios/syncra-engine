extends Node
class_name NCWizStage

signal stage_complete(data: Dictionary)

@export var next_button_path: NodePath

@onready var next_button: Button = get_node(next_button_path)

func _ready():
	if is_instance_valid(next_button):
		next_button.pressed.connect(_on_next_pressed)

func _on_next_pressed():
	var data = collect_stage_data()
	emit_signal("stage_complete", data)

func collect_stage_data() -> Dictionary:
	var data := {}
	for child in get_children():
		if child.has_meta("wiz_input") and child.name != "":
			match child:
				LineEdit:
					data[child.name] = child.text
				TextEdit:
					data[child.name] = child.text
				OptionButton:
					data[child.name] = child.selected
				CheckBox, Button:
					data[child.name] = child.button_pressed
				SpinBox, Slider:
					data[child.name] = child.value
				_:
					data[child.name] = child.get("text") if child.has_method("get") and child.has_property("text") else null
	return data
