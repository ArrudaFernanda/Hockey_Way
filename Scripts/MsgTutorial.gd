extends Node2D


func _ready():
	if Data.firstOpen_exist() == false or Data.firstOpen_exist() == null or Data.load_firstOpen() == false or Data.load_firstOpen() == null:
		$Timer.start()
		
	elif Data.load_firstOpen() != false and Data.load_firstOpen() != null:
		$".".queue_free()


func _on_Timer_timeout():
	$".".queue_free()
