extends CollisionShape2D

onready var collisionNode = get_node(".")

func _physics_process(delta):
	if Input.is_action_just_released("release"):
		collisionNode.position.y -= 8
	else:
		collisionNode.position.y = 58.242
