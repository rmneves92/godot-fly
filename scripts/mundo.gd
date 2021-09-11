extends Node2D

const PRE_COLUNAS = preload("res://scenes/colunas.tscn")
var tempo_instanciar = 0


func _ready():
	pass

func _process(delta):
	
	$score/score.text = str(Dados.pontos)
	
	tempo_instanciar += delta
	if tempo_instanciar > 2:
		criar_colunas()
		tempo_instanciar = 0
	
	mover_cenario($cenario/fundo, $cenario/fundo2, 0.5, 1085)	
	mover_cenario($cenario/montanha, $cenario/montanha2, 3, 1086)	
	mover_cenario($cenario/nuvem, $cenario/nuvem2, 5, 2160)

func mover_cenario(node1, node2, vel, pos):
	node1.position.x -= vel
	node2.position.x -= vel
	
	if node1.position.x <= -pos:
		node1.position.x = pos
	if node2.position.x <= -pos:
		node2.position.x = pos

func criar_colunas():
	var colunas = PRE_COLUNAS.instance()
	colunas.position.y = rand_range(200, 450)
	colunas.position.x = 500
	add_child(colunas)
	
	
