extends Control


func _process(delta):
	if Data.is_energy():
		#print("Arquivo energia existe")
		$TextureRect.rect_size.x = Data.load_energy() * 16
	elif Data.is_energy() == false or Data.is_energy() == null:
		#print("Arq energia nao existe")
		$TextureRect.rect_size.x = Global.energy * 16

