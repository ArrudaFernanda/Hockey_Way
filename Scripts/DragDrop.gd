extends KinematicBody2D

var is_right = false
var is_left = false
var velocity = 2

func _ready():
	if Data.firstOpen_exist() == false or Data.firstOpen_exist() == null or Data.load_firstOpen() == false or Data.load_firstOpen() == null:
		print("XXXXXXXXXXXXXX")
		$Timer.start()
		Data.save_firstOpen(true)
	elif Data.load_firstOpen() != false and Data.load_firstOpen() != null:
		print("FFFFFFFFFFFFF")
		$".".queue_free()

func _process(delta):
	#Só entra nesse if no inicio de cada jogo:
	if is_right == false and is_left == false:
		position.x += velocity
	
	if is_right:
		position.x -= velocity
	elif is_left:
		position.x += velocity

func idle(direcao):
	if direcao == "Right":
		is_right = true
		is_left = false
	elif direcao == "Left":
		is_left = true
		is_right = false


func _on_Timer_timeout():
	$".".queue_free()
