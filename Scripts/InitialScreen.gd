extends Control

class_name InitialScreen

func _ready():
	if Data.music_exist() == false or Data.music_exist() == null:
		Data.save_music(true)
	elif Data.music_exist():
		pass
		
	if Data.audio_exist() == false or Data.audio_exist() == null:
		Data.save_audio(true)
	elif Data.audio_exist():
		pass
	
	
	if Data.is_coins() == false or Data.is_coins() == null:
		Data.save_coins(0)
	elif Data.is_coins():
		print("Energy (readyInitialScreen) = " + str(Data.load_energy()))
	
	if Data.chances_exist() == false or Data.chances_exist() == null:
		Data.save_chances(0)
	elif Data.chances_exist():
		pass
	
	#teste
	#Data.save_firstOpen(false)


func _on_btnMore_pressed():
	play_audio_btn()
	get_tree().change_scene("res://Scenes/StoreScreen.tscn")


func _on_btnMore2_pressed():
	play_audio_btn()
	get_tree().change_scene("res://Scenes/StoreScreen.tscn")
	
func play_audio_btn():
	if Data.load_audio():
		$GeneralButtons.play()
	else:
		pass
