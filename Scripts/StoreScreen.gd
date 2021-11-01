extends Control



func _on_btnBack_pressed():
	if Data.load_audio():
		$GeneralButtons.play()
	else:
		pass
	get_tree().change_scene("res://Scenes/InitialScreen.tscn")
