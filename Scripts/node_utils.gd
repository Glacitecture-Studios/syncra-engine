extends Node

class_name NodeUtils
	
static func deactivate_node(node: Node):
	if node is CanvasItem:
		node.hide()
	elif node is VisualInstance3D:
		node.visible = false  # For 3D visibility

	node.set_process(false)
	node.set_physics_process(false)
	node.set_process_input(false)
	node.set_process_unhandled_input(false)

static func activate_node(node: Node):
	if node is CanvasItem:
		node.show()
	elif node is VisualInstance3D:
		node.visible = true

	node.set_process(true)
	node.set_physics_process(true)
	node.set_process_input(true)
	node.set_process_unhandled_input(true)


static func deactivate_node_recursive(root: Node) -> void:
	deactivate_node(root)
	for child in root.get_children():
		if child is Node:
			deactivate_node_recursive(child)

static func activate_node_recursive(root: Node) -> void:
	activate_node(root)
	for child in root.get_children():
		if child is Node:
			activate_node_recursive(child)

static func get_safe_property(node: Node, prop_name: String):
	for prop in node.get_property_list():
		if prop is Dictionary and prop.get("name", "") == prop_name:
			return node.get(prop_name)
	return null
