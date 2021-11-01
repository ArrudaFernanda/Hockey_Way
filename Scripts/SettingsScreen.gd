extends Control



func _on_btnBack_pressed():
	if Data.load_audio():
		$GeneralButtons.play()
	else:
		pass
	get_tree().change_scene("res://Scenes/InitialScreen.tscn")


func _ready():
	if Data.load_music():
		$btnMusic.pressed = true
	else:
		$btnMusic.pressed = false
		
	if Data.load_audio():
		$btnAudio.pressed = true
	else:
		$btnAudio.pressed = false


func _on_btnAudio_toggled(button_pressed):
	#Checar se apresenta erro
	if Data.load_audio():
		$CheckButtons.play()
	else:
		pass
	if button_pressed:
		Data.save_audio(true)
	elif button_pressed == false:
		Data.save_audio(false)
