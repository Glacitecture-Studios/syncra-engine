extends Panel

@onready var new_chart_button = $"New Chart"
@onready var open_chart_button = $"Open Chart"
@onready var preferences_button = $"Preferences"
@onready var exit_button = $"Exit"

@onready var github = $"GitHub Button"
@onready var discord = $"Discord Button"

@onready var new_chart_wizard = $"ChartWizard"

@onready var coreutils = SyncraUtils.new()

var data = {
	name = "",
	path = ""
}

func _ready() -> void:
	new_chart_button.pressed.connect(_on_new_chart_pressed)
	open_chart_button.pressed.connect(_on_open_chart_pressed)
	preferences_button.pressed.connect(_preferences_pressed)
	github.pressed.connect(_on_github_pressed)
	discord.pressed.connect(_on_discord_pressed)
	exit_button.pressed.connect(func(): coreutils.close_game())

func _on_new_chart_pressed():
	# Create a new chart from scratch
	print("New chart created!")
	# TODO: Real Implementation + Scene Switch

func _on_open_chart_pressed():
	# Show the file dialog to open an existing chart
	print("Opening File Dialog for Open Chart")
	# TODO: Real Implementation + Loading Mechanism

func _preferences_pressed():
	# Show the preferences window
	print("Opening Preferences Window")
	# TODO: Prefs Window

func _on_github_pressed():
	# Open GitHub Repository
	OS.shell_open("https://github.com/WinterBlox/syncra-engine")

func _on_discord_pressed():
	# Open Discord Invite
	OS.shell_open("https://discord.gg/RzVmEyAYuy")
