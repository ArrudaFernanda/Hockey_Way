extends Tabs

var coins_package_A = 42000
var coins_package_B = 378000
var coins_package_C = 504000

func _process(delta):
	$RichTextLabel/Node2D.position.x = -$HScrollBar2.value


func _on_btnA_pressed():
	play_audio_btn()
	print("Comprou Package A")
	Data.save_coins(Data.load_coins() + coins_package_A)

func _on_btnB_pressed():
	play_audio_btn()
	print("Comprou Package B")
	Data.save_coins(Data.load_coins() + coins_package_B)

func _on_btnC_pressed():
	play_audio_btn()
	print("Comprou Package C")
	Data.save_coins(Data.load_coins() + coins_package_C)


func play_audio_btn():
	if Data.load_audio():
		$BuyButtons.play()
	else:
		pass
