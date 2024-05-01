# force_drag crash example
This is an example repo to show the steps to reproduce the crash while using multiple mouse events during a Control's `force_drag`.

### Steps to reproduce
On a `Control` node ie `Button` connect the `gui_input` signal to a script that checks for any `InputEventMouseButton` and call the `force_drag` function to begin the drag.
``` button_drag.gd
extends Button

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		force_drag({}, duplicate())
```

While running the project, use any mouse button to start the drag, then press any additional MouseButton and it will crash entirely, no error message or anything to debug.

This example was stripped to it's basic to reduce any other possible complications.