extends RigidBody2D

var is_out = false
var is_RightCorner = false
var is_LeftCorner = false
var is_goal = false
var is_time = false
var is_new_level = false
onready var restartScreen = "res://Scenes/RestartScreen.tscn"
onready var changer = get_parent().get_node("Transition_in")

func removeDiscoNewLevel():
	queue_free()
	Global.discoId = 0
	Global.createDisco = false

#Libera o disco passando parametro para criar outro:
func removeDisco():
	queue_free()
	Global.discoId += 1
	Global.createDisco = true
	
func isNewLevel(newLevel):
	if newLevel == "Yes":
		is_new_level = true
	else:
		is_new_level = false

#Funções responsáveis por mudar o valor das variáveis conforme
#o parametro recebido de Goal.gd:
func isGoal(goal):
	if goal == "Goal":
		is_goal = true
	else:
		is_goal = false
	
func isCorner(corner):
	if corner == "cornerRight" or corner == "cornerLeft":
		is_LeftCorner = true
		is_RightCorner = true
	else:
		is_LeftCorner = false
		is_RightCorner = false

func isOut(out):
	if out == "Out":
		is_out = true
	else:
		is_out = false
		
#Faz o disco vir até o player da direita para esquerda
func _integrate_forces(state):
	if $".".position.y == 725:
		apply_impulse(Vector2(), Vector2(-1.5, 0))


func _on_VisibilityNotifier2D_screen_exited():
	#Aqui verifica se após disco sair da tela deve descontar chances ou não
	#E verifica se chances acabou para chamar RestartScreen:
	
	if Global.chances != 0 and is_goal == false:
		Global.chances -= 1
		if Global.chancesExtra != 0:
			Global.chancesExtra -= 1
		if Global.chances == 0:
			print("DISCO2 FIM")
			Global.createDisco = false
			Data.save_coins(Data.load_coins() + Global.score)
			#observar comportamento:
			#Testar a frequencia com e sem a linha
			_integrate_forces(false)
			changer.change_scene(restartScreen, 3.8)
	
	#Aqui ele só printa porque a chamada pra liberar o disco é feita
	#individualmente dentro Goal.gd e LineTop.gd e na função _on_Timer_timeout()
	if is_goal or is_LeftCorner or is_RightCorner or is_out or is_time or is_new_level:
		print("Disco: gol, traves, fora, parado, nova fase")
	#Este else serve para liberarDisco quando o jogador não faz a tacada
	#e deixa o disco rolar da direita pra esquerda até sair fora da tela:
	else:
		removeDisco()
		

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		print("Shot")
		if Data.load_audio():
			$Shot.play()
		else:
			pass
		$Timer.start()
	if body.name == "Goalie":
		print("Goleiro pegou!!!")

func _on_Timer_timeout():
	print("Acabou tempo")
	removeDisco()
	is_time = true

