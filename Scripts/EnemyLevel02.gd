extends KinematicBody2D

var is_right = false
var is_left = false
var velocity = 1

func _process(delta):
	#Só entra nesse if no inicio de cada jogo:
	if is_right == false and is_left == false:
		position.x += velocity
	
	if is_right:
		position.x -= velocity
	elif is_left:
		position.x += velocity

#Recebe o parametro que diz em qual colidiu e assim sabemos
#para onde deve ir, se colidiu na direita tem ir pra esquerda e
#vice-versa. Assim que colide process recebe false para que por 1
#segundo o inimigo fique parado, quando timeout process recebe true
#e ele volta a se mexer.
func idle(direcao):
	set_process(false)
	$Timer.start()
	if direcao == "Right":
		is_right = true
		is_left = false
	elif direcao == "Left":
		is_left = true
		is_right = false

func _on_Timer_timeout():
	set_process(true)
