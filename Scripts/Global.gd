extends Node

var createDisco
var discoId = 0
var goals = 0
var score = 0
onready var chances = 10 + Data.load_chances()
var chancesExtra = 0
#Usada somente no first open:
var energy = 5
var runCoins = false
var audio : bool

