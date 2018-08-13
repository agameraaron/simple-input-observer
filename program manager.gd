extends Node

func _ready():
	pass
	
func _input(event):
	if event is InputEventKey and event.is_pressed():
		get_node("Scan Code").set_text(str(event.scancode))
		get_node("Key Name").set_text(str(OS.get_scancode_string(event.scancode)))
	elif event is InputEventJoypadMotion:
		get_node("Axis Name").set_text(str(event.axis)) #gamepad motion type
	elif event is InputEventJoypadButton: #button
		get_node("Button Name").set_text(str(event.button_index))
