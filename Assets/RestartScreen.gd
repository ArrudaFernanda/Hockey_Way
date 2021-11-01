extends Control


func _ready():
	if Data.is_energy() == false or Data.is_energy() == null:
		Global.energy -= 1
		Data.save_energy(Global.energy)
	elif Data.is_energy():
		Data.save_energy(Data.load_energy() - 1)
		
	if Global.energy == 0:
		print("Veja anúncios ou compre mais energia!!!")
	
	Global.runCoins = true


func _on_btnRestart_pressed():
	Global.chances = 10
	Global.discoId = 0
	Global.score = 0
	
	if Data.load_energy() >= 1 and Data.load_energy() <= 5:
		get_tree().change_scene("res://Levels/Level01.tscn")
	elif Data.load_energy() == 0:
		var energyPopup = load("res://Scenes/EnergyPopup.tscn").instance()
		get_tree().current_scene.add_child(energyPopup)


func _on_btnQuit_pressed():
	get_tree().quit()


func _on_btnStore_pressed():
	get_tree().change_scene("res://Scenes/StoreScreen.tscn")


func _on_btnMore_pressed():
	get_tree().change_scene("res://Scenes/StoreScreen.tscn")

