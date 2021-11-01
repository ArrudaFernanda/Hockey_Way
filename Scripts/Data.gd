extends Node

var coins = "user://coins.dat"
var energy = "user://energy.dat"
var chances = "user://chances.dat"
var bestScore = "user://best_score.dat"
var firstOpen = "user://first_open.dat"
var music = "user://music.dat"
var audio = "user://audio.dat"
var file = File.new()

func audio_exist() -> bool:
	var b : bool
	if file.file_exists(audio):
		b = true
	return b

func save_audio(val:bool) -> void:
	file.open(audio,File.WRITE)
	file.store_var(val)
	file.close()

func load_audio() -> bool:
	var tmp : bool
	if audio_exist():
		file.open(audio, File.READ)
		tmp = file.get_var()
		file.close()
	else:
		tmp = true
	return tmp

func music_exist() -> bool:
	var b : bool
	if file.file_exists(music):
		b = true
	return b

func save_music(val:bool) -> void:
	file.open(music, File.WRITE)
	file.store_var(val)
	file.close()
	
func load_music() -> bool:
	var tmp : bool
	if music_exist():
		file.open(music, File.READ)
		tmp = file.get_var()
		file.close()
	else:
		tmp = true
	return tmp

func chances_exist() -> bool:
	var b : bool
	if file.file_exists(chances):
		b = true
	return b
	
func save_chances(val:int) -> void:
	file.open(chances, File.WRITE)
	file.store_var(val)
	file.close()
	
func load_chances() -> int:
	var tmp : int
	if chances_exist():
		file.open(chances, File.READ)
		tmp = file.get_var()
		file.close()
	else:
		tmp = 0
	return tmp

func firstOpen_exist() -> bool:
	var b : bool
	if file.file_exists(firstOpen):
		b = true
	return b
	
func save_firstOpen(val:bool) -> void:
	file.open(firstOpen, File.WRITE)
	file.store_var(val)
	file.close()
	
func load_firstOpen() -> bool:
	var tmp : bool
	file.open(firstOpen, File.READ)
	tmp = file.get_var()
	file.close()
	return tmp

func is_bestScore() -> bool:
	var b : bool
	if file.file_exists(bestScore):
		b = true
	return b
	
func save_bestScore(val:int) -> void:
	file.open(bestScore, File.WRITE)
	file.store_var(val)
	file.close()
	
func load_bestScore() -> int:
	var tmp : int
	file.open(bestScore, File.READ)
	tmp = file.get_var()
	file.close()
	return tmp
	
func is_coins() -> bool:
	var b : bool
	if file.file_exists(coins):
		b = true
	return b
	
func save_coins(val:int) -> void:
	file.open(coins, File.WRITE)
	file.store_var(val)
	file.close()
	
func load_coins() -> int:
	var tmp : int
	file.open(coins, File.READ)
	tmp = file.get_var()
	file.close()
	return tmp
	
func is_energy() -> bool:
	var b : bool
	if file.file_exists(energy):
		b = true
	return b
	
func save_energy(val:int) -> void:
	file.open(energy, File.WRITE)
	file.store_var(val)
	file.close()
	
func load_energy() -> int:
	var tmp : int
	file.open(energy, File.READ)
	tmp = file.get_var()
	file.close()
	return tmp
