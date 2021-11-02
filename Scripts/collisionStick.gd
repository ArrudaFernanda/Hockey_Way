extends CollisionShape2D

onready var collisionNode = get_node(".")

func _physics_process(delta):
	#Quando solta o botão esquerdo do mouse ele (collisionStick)
	#sobe 8 no eixo y. Se não, ele retorna a posição
	#padrão em que ele fica eixo y. [Foi necessário ajuste
	#nas configurações em Mapa de Entrada/ Todos os dispositivos]
	if Input.is_action_just_released("release"):
		collisionNode.position.y -= 8
	else:
		collisionNode.position.y = 58.242
