extends AudioStreamPlayer


func _ready():
	if Data.load_music():
		$".".play()
	else:
		pass

func _on_btnMusic_toggled(button_pressed):
	#Checar se apresenta erro
	if Data.load_audio():
		$CheckButtons.play()
	else:
		pass
	if button_pressed:
		Data.save_music(true)
		_ready()
	elif button_pressed == false:
		Data.save_music(false)
		$".".stop()
