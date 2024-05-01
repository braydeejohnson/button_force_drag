extends Button

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		force_drag({}, duplicate())
