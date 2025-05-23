extends Node

class_name OSUtils

const MACOS_VERSION_MAP := {
	"15": "Sequoia",
	"14": "Sonoma",
	"13": "Ventura",
	"12": "Monterey",
	"11": "Big Sur"
}

func get_pretty_os_name() -> String:
	var platform := OS.get_name()
	
	match platform:
		"Windows":
			return _get_windows_pretty_name()
		"macOS":
			return _get_macos_pretty_name()
		"Linux":
			return _get_linux_pretty_name()
		_:
			return platform

func _get_windows_pretty_name() -> String:
	var output := []
	var err := OS.execute("cmd", ["/c", "ver"], output, true)
	if err == OK and output.size() > 0:
		var raw: String = output[0].strip_edges()
		if raw.find("10.") != -1:
			return "Windows 10/11"
		elif raw.find("6.1") != -1:
			return "Windows 7"
		else:
			return "Windows (Unknown Version)"
	return "Windows"

func _get_macos_pretty_name() -> String:
	var output := []
	var err := OS.execute("usr/bin/sw_vers", ["-productVersion"], output, true)
	if err == OK and output.size() > 0:
		var version_str: String = output[0].strip_edges()
		var major := version_str.split(".")[0]
		var version_name: String = MACOS_VERSION_MAP.get(major, "macOS (Unknown)")
		return "macOS %s (%s)" % [version_name, version_str]
	return "macOS"
	
func _get_linux_pretty_name() -> String:
	var output := []
	var err := OS.execute("lsb_release", ["-d"], output, true)
	if err == OK and output.size() > 0:
		return output[0].strip_edges().replace("Description:", "").strip_edges()
	return "Linux"
