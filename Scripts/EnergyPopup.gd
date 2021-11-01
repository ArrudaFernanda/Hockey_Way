extends Control


func _on_Button_pressed():
	if Data.load_audio():
		$GeneralButtons.play()
	else:
		pass
	get_tree().change_scene("res://Scenes/StoreScreen.tscn")
