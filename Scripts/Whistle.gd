extends AudioStreamPlayer


func _ready():
	if Data.load_audio():
		$".".play()
	else:
		pass
