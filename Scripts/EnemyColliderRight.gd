extends Area2D


func _on_EnemyColliderRight_body_entered(body):
	if body.has_method("idle"):
		body.idle("Right")
		print("Bateu direita")
