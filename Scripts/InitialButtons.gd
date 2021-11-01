extends Control


func _on_btnStart_pressed():
	play_audio_btn()
	Global.discoId = 0
	Global.score = 0
	
	if Data.is_energy() == false or Data.is_energy() == null:
		get_tree().change_scene("res://Levels/Level01.tscn")
		extraChances()
	elif Data.is_energy():
		if Data.load_energy() >= 1 and Data.load_energy() <= 5:
			extraChances()
			get_tree().change_scene("res://Levels/Level01.tscn")
		
		elif Data.load_energy() == 0:
			var energyPopup = load("res://Scenes/EnergyPopup.tscn").instance()
			get_tree().current_scene.add_child(energyPopup)
		#Para testes:	
		#elif Data.load_energy() < 0:
			#Data.save_energy(2)

func extraChances():
	if Global.chancesExtra != 0:
		Global.chances += Global.chancesExtra
	else:
		pass

func _on_btnStore_pressed():
	play_audio_btn()
	get_tree().change_scene("res://Scenes/StoreScreen.tscn")


func _on_btnControls_pressed():
	play_audio_btn()
	var controlsPopup = load("res://Scenes/ControlsScreen.tscn").instance()
	get_tree().current_scene.add_child(controlsPopup)


func _on_btnQuit_pressed():
	play_audio_btn()
	get_tree().quit()


func _on_btnSettings_pressed():
	play_audio_btn()
	get_tree().change_scene("res://Scenes/SettingsScreen.tscn")
	
func play_audio_btn():
	if Data.load_audio():
		$GeneralButtons.play()
	else:
		pass
