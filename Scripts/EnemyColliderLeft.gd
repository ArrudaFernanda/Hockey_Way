extends Area2D



func _on_EnemyColliderLeft_body_entered(body):
	if body.has_method("idle"):
		body.idle("Left")
		print("bateu esquerda")
