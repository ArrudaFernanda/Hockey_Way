extends KinematicBody2D

var velocity = 1
var is_right = false
var is_left = false

func _process(delta):
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
		
	$moviment.wait_time = rand_range(0.9, 3.35)
	$moviment.start()
		
func _on_moviment_timeout():
	if is_right == true:
		is_right = false
		is_left = true
	elif is_left == true:
		is_left = false
		is_right = true
