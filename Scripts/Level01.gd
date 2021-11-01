extends Node2D

onready var discoInstance = preload("res://Scenes/Disco.tscn")
onready var disco2Instance = preload("res://Scenes/Disco2.tscn")
onready var goal = get_node("Goal")


func _physics_process(delta):
	$Player.position.x = get_global_mouse_position().x
	
	if Global.createDisco == true and Global.chances != 0:
		if Global.discoId % 2 != 0:
			#Criação de objeto em tempo de execução (o código para fazer
			#isso foi retirado de tutoriais anteriores):
			var disco = discoInstance.instance()
			add_child_below_node(goal, disco)
			disco.global_position = Vector2(390, 725)
			Global.createDisco = false
			print("Criei disco")
		elif Global.discoId == 0:
			pass
		elif Global.discoId % 2 == 0:
			#Criação de objeto em tempo de execução (o código para fazer
			#isso foi retirado de tutoriais anteriores):
			var disco2 = disco2Instance.instance()
			add_child_below_node(goal, disco2)
			disco2.global_position = Vector2(390, 725)
			Global.createDisco = false
			print("Criei disco2")
