extends Window

var data: Dictionary

#region Stage 1 Variables
@onready var stage1 = $BasicMetadata
@onready var s1_project_dir_dialog = $BasicMetadata/ProjectDirDialog
@onready var s1_project_dir_field = $BasicMetadata/ProjectDir
@onready var s1_project_dir_choose_btn = $BasicMetadata/ProjectDirChooseBtn
#endregion
#region Stage 1 Methods

func _on_stage1(stage_dat: Dictionary):
	data.merge(stage_dat)
	print("Stage 1 Complete. Data: ", data)
	NodeUtils.deactivate_node_recursive(stage1)
	NodeUtils.activate_node_recursive(stage2)

func _on_s1_project_dir_dialog_dir_selected(dir: String):
	s1_project_dir_field.text = dir

func _on_s1_project_dir_choose_btn_pressed():
	s1_project_dir_dialog.popup_centered()
#endregion

#region Stage 2 Variables
@onready var stage2 = $AudioSetup
#endregion
#region Stage 2 Methods

#endregion
func _ready() -> void:
	stage1.stage_complete.connect(_on_stage1)
	s1_project_dir_dialog.dir_selected.connect(_on_s1_project_dir_dialog_dir_selected)
	s1_project_dir_choose_btn.pressed.connect(_on_s1_project_dir_choose_btn_pressed)
