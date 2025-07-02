extends PopupMenu

var coreutils := SyncraUtils.new()

@onready var mainMenu: PopupMenu = $"."
@onready var subMenuImport: PopupMenu = $"Import Options"
@onready var subMenuExport: PopupMenu = $"Export Options"

@onready var chartWizard = $"Project Creator"

func _ready() -> void:
	# Ensure the PopupMenu node is correctly assigned
	if mainMenu and subMenuExport and subMenuImport:
		# Add Menus
		mainMenu.add_item("New Project", 0)
		mainMenu.add_item("Open Project", 1)
		mainMenu.add_item("Save", 2)
		mainMenu.add_item("Save As", 3)
		mainMenu.add_separator("", 4)
		
		# Add Submenus
		mainMenu.add_submenu_node_item("Import", subMenuImport, 5)
		mainMenu.add_submenu_node_item("Export", subMenuExport, 6)
		
		# Add Remaining Menus
		mainMenu.add_separator("", 7)
		mainMenu.add_item("Preferences", 8)
		mainMenu.add_item("Close Chart", 9)
		mainMenu.add_item("Quit", 10)
		
		# Make Signal Connections
		mainMenu.connect("id_pressed", _on_id_pressed)
		
		_setup_shortcuts()
		
func _on_id_pressed(id: int):
	if id == 0:
		chartWizard.popup_centered()
		
	if id == 10:
		get_tree().quit()
		
		
func make_shortcut(action: String) -> Shortcut:
	var event := InputEventAction.new()
	event.set_action(action)
	var shortcut := Shortcut.new()
	shortcut.set_events([event])
	return shortcut
	
	
func _setup_shortcuts() -> void:
	# Quit Shortcut
	var quit_shortcut := make_shortcut("quit")
	mainMenu.set_item_shortcut(10, quit_shortcut)
	
	# New Chart Shortcut
	var new_shortcut := make_shortcut("new_chart")
	mainMenu.set_item_shortcut(0, new_shortcut)
	
	# Open Chart Shortcut
	var open_shortcut := make_shortcut("open_chart")
	mainMenu.set_item_shortcut(1, open_shortcut)
	
	# Save Shortcut
	var save_shortcut := make_shortcut("save")
	mainMenu.set_item_shortcut(2, save_shortcut)
	
	# Save As Shortcut
	var saveas_shortcut := make_shortcut("save_as")
	mainMenu.set_item_shortcut(3, saveas_shortcut)
