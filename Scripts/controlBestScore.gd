extends Control

onready var numBestScore = get_node("numBestScore")

func _ready():
	if Data.is_bestScore() == false or Data.is_bestScore() == null:
		Data.save_bestScore(0)
	elif Data.is_bestScore():
		if Data.load_bestScore() < Global.score:
			if Data.load_audio():
				$bestScoreAudio.play()
				$Sprite.visible = false
				$AnimatedSprite.visible = true
				$AnimatedSprite.play("star_anim")
				$Timer.start()
			else:
				pass
			Data.save_bestScore(Global.score)
			
	numBestScore.set_text(str(Data.load_bestScore()))


func _on_Timer_timeout():
	$AnimatedSprite.visible = false
	$Sprite.visible = true
	$AnimatedSprite.stop()
