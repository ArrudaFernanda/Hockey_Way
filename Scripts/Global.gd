extends Node

#Se true cria se false não cria:
var createDisco
#Impar = Disco e Par = Disco2:
var discoId = 0
#Não está sendo usada no momento. mas pode servir para contar os gols feitos:
var goals = 0
var score = 0
#Se refere a 10 (padrão) e Data.load_chances() é a quantia que
#a pessoa comprou a mais de chances fixas:
onready var chances = 10 + Data.load_chances()
#Essa variavel é adicionado valor a ela quando assiste ads
#e é manipulada em Disco.gd, Disco2.gd. Ela é armazenada na
#memória ram e quando fecha o jogo o valor contido nela é perdido:
var chancesExtra = 0
#Usada somente no first open:
var energy = 5
#Determina se coins deve girar ou não, manipulada em RestartScreen
#e Coins:
var runCoins = false
#Remover?
var audio : bool

