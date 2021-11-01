extends StaticBody2D


func _on_Area2D_body_entered(body):
	if body.has_method("removeDisco"):
		if Data.load_audio():
			$HitBoard.play()
		else:
			pass
		body.removeDisco()
		body.isOut("Out")
