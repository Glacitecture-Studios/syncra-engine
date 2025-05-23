extends Node

class_name ArchiveUtils

const TYPE_MAP := {
	"osu": ".osu",
	"syncra": ".syncra",
	"stepmania": ".sm",
	"chart": ".chart"
}

func export_syncra_project(output_path: String) -> void:
	var dir = FileDialog.new()
