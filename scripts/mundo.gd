extends Node2D

const pre_colunas = preload("res://scenes/colunas.tscn")
var tempo_instanciar = 0

func _ready():
	pass

func _process(delta):
	tempo_instanciar += delta
	if tempo_instanciar > 2:
		criar_colunas()
		tempo_instanciar = 0
	
	$cenario/fundo.position.x -= 0.5
	$cenario/fundo2.position.x -= 0.5
	
	if $cenario/fundo.position.x <= -1085:
		$cenario/fundo.position.x = 1085
		
	if $cenario/fundo2.position.x <= -1085:
		$cenario/fundo2.position.x = 1085

	$cenario/montanha.position.x -= 3
	$cenario/montanha2.position.x -= 3
	
	if $cenario/montanha.position.x <= -1086:
		$cenario/montanha.position.x = 1086
		
	if $cenario/montanha2.position.x <= -1086:
		$cenario/montanha2.position.x = 1086
		
	$cenario/nuvem.position.x -= 5
	$cenario/nuvem2.position.x -= 5
	
	if $cenario/nuvem.position.x <= -2160:
		$cenario/nuvem.position.x = 2160
	if $cenario/nuvem2.position.x <= -2160:
		$cenario/nuvem2.position.x = 2160

func criar_colunas():
	var colunas = pre_colunas.instance()
	colunas.position.y = rand_range(200, 450)
	colunas.position.x = 500
	add_child(colunas)
	
	
