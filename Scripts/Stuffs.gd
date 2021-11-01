extends Tabs

var priceEnergy = 1000
var priceFixedChance = 85000
onready var coinsAudio = get_node("CoinsAudio")
onready var addItemsAudio = get_node("AddItemsAudio")
onready var generalBtn = get_node("GeneralButtons")

func _process(delta):
	$RichTextLabel/control.position.x = -$HScrollBar.value
	
	
func _on_btnEnergy_pressed():
	if Data.is_coins():
		if Data.load_coins() >=  priceEnergy:
			if Data.load_energy() < 5:
				Data.save_coins(Data.load_coins() - priceEnergy)
				Data.save_energy(Data.load_energy() + 1)
				play_audio(addItemsAudio)
			else:
				play_audio(generalBtn)
				print("Carga Máxima!")
		else:
			play_audio(generalBtn)
			print("Moedas insuficientes!")
	elif Data.is_coins() == false or Data.is_coins() == null:
		play_audio(generalBtn)
		print("Erro! Arquivo não existe ou é nulo!")



func _on_btnChances_pressed():
	if Data.chances_exist():
		if Data.is_coins():
			if Data.load_coins() >= priceFixedChance:
				Data.save_coins(Data.load_coins() - priceFixedChance)
				Data.save_chances(Data.load_chances() + 1)
				Global.chances = 10 + Data.load_chances()
				play_audio(addItemsAudio)
			else:
				play_audio(generalBtn)
				print("Moedas Insuficientes!")
	else:
		play_audio(generalBtn)
		print("Erro! Arquivo não existe ou é nulo!")
	


func _on_btnWatch_pressed():
	print("Assistiu Anúncio!")
	Global.chancesExtra += 3
	Data.save_coins(Data.load_coins() + 1000)
	
	if Data.is_energy():
		if Data.load_energy() < 5:
			Data.save_energy(Data.load_energy() + 1)
	
	play_audio(coinsAudio)
	play_audio(addItemsAudio)


func play_audio(val):
	if Data.load_audio():
		val.play()
	else:
		pass
