extends StaticBody2D

var p_atual_x
var velocity = 0.5
var final
var retornaCont = 1

func _ready():
	p_atual_x = $".".position.x
	final = p_atual_x - 125
	
func _process(delta):
	if retornaCont % 2 != 0:
		$".".position.x -= velocity
	else:
		$".".position.x += velocity

func _on_area2dGoalie_body_entered(body):
	retornaCont += 1
