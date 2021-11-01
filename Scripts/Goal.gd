extends Area2D

onready var changer = get_parent().get_node("Transition_in")
onready var level02 = "res://Levels/Level02.tscn"
onready var level03 = "res://Levels/Level03.tscn"
onready var level04 = "res://Levels/Level04.tscn"

func _on_Goal_body_entered(body):
	Global.score += 200
	if Data.load_audio():
		$BuzzerGoal.play()
		$crowd_goal.play()
	else:
		pass
	if Global.score == 1600:
		body.removeDiscoNewLevel()
		body.isNewLevel("Yes")
		body.isGoal("Goal")
		changer.change_scene(level02)
	if Global.score == 3600:
		body.removeDiscoNewLevel()
		body.isNewLevel("Yes")
		body.isGoal("Goal")
		changer.change_scene(level03)
	if Global.score == 6000:
		body.removeDiscoNewLevel()
		body.isNewLevel("Yes")
		body.isGoal("Goal")
		changer.change_scene(level04)
	if body.has_method("removeDisco") and Global.score != 1600 and Global.score != 3600 and Global.score != 6000:
		body.removeDisco()
		body.isGoal("Goal")

func _on_area2dRight_body_entered(body):
	if body.has_method("removeDisco"):
		print("Na trave Direita")
		body.removeDisco()
		body.isCorner("cornerRight")

func _on_area2dLeft_body_entered(body):
	if body.has_method("removeDisco"):
		print("Na trave Esquerda")
		body.removeDisco()
		body.isCorner("cornerLeft")
