extends Area2D

var sound_has_played = false

func _on_Area2D_input_event(viewport, event, shape_idx):
	
	if event is InputEventMouseButton:
		if event.is_pressed():
			if !sound_has_played:
				sound_has_played = true
				print("Play")
				$Sokrates.play()
				yield(get_tree().create_timer(108.0), "timeout")
				$Sokrates.stop()
	
	pass # Replace with function body.
