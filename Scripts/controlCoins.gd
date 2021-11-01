extends Control

onready var amountCoins = get_node("amountCoins")
onready var animCoins = get_node("AnimatedSprite")

func _process(delta):
	if Data.is_coins() == false or Data.is_coins() == null:
		Data.save_coins(0)
		amountCoins.set_text(str(Data.load_coins()))
	else:
		amountCoins.set_text(str(Data.load_coins()))
		
	if Global.runCoins == true:
		animCoins.play("coins")
		$Timer.start()
		Global.runCoins = false
	elif Global.runCoins == false:
		pass


func _on_Timer_timeout():
	animCoins.play("coin_idle")
	
