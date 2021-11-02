extends Control


func _ready():
	#Som de moedas pois é suposto que se tenha ganho
	#na partida:
	if Data.load_audio():
		$Coins/controlCoins/coinsAudio.play()
	else:
		pass
	
	if Data.is_energy() == false or Data.is_energy() == null:
		Global.energy -= 1
		Data.save_energy(Global.energy)
	elif Data.is_energy():
		Data.save_energy(Data.load_energy() - 1)
	
	#Não necessário pois o sprite de energia já mostra que acabou
	#será deixado aqui pois pode ser usado futuramente pra chamar
	#EnergyPopup:
	#if Global.energy == 0:
		#print("Veja anúncios ou compre mais energia!!!")
	
	Global.runCoins = true
	#Lógica:
	#Depois da partida Global.chances foi zerada entao
	#quando finaliza a partida temos que restaurar Global.chances
	#para que tudo funcione adequadamente:
	Global.chances = 10 + Data.load_chances()

func _on_btnMore_pressed():
	play_audio_btn()
	get_tree().change_scene("res://Scenes/StoreScreen.tscn")

#Torna visivel para o usuario que ele está na tela de restart
func _on_InitialButtons_tree_entered():
	$InitialButtons/btnStart.set_text("RESTART")


func _on_btnMore2_pressed():
	play_audio_btn()
	get_tree().change_scene("res://Scenes/StoreScreen.tscn")

func play_audio_btn():
	if Data.load_audio():
		$GeneralButtons.play()
	else:
		pass
