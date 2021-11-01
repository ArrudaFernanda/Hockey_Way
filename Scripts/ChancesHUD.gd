extends Node2D

onready var numFixed = get_node("numFixed")
onready var numExtra = get_node("numExtra")

func _process(delta):
	numFixed.set_text(str(Global.chances))
	numExtra.set_text(str(Global.chancesExtra))
