extends KinematicBody2D

onready var playerNode = get_node(".")

func _physics_process(delta):
	if Input.is_action_just_released("release"):
		playerNode.position.y -= 14
	else:
		playerNode.position.y = 688
