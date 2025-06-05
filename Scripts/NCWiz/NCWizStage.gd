extends Control
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
					var prop_list = child.get_property_list()
					var prop_names = []
					for prop in prop_list:
						if prop is Dictionary and "name" in prop:
							prop_names.append(prop["name"])
					
					if "text" in prop_names:
						data[child.name] = child.get("text")
					elif "value" in prop_names:
						data[child.name] = child.get("value")
					else:
						data[child.name] = null
	return data
