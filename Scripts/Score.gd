extends Control

onready var scoreNum = get_node("scoreNum")

func _process(delta):
	scoreNum.set_text(str(Global.score))
