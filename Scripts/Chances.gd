extends Control

onready var chancesNum = get_node("chancesNum")

func _process(delta):
	chancesNum.set_text(str(Global.chances))
	
