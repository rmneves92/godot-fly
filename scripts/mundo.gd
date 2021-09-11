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

func criar_colunas():
	var colunas = pre_colunas.instance()
	colunas.position.y = rand_range(200, 450)
	colunas.position.x = 500
	add_child(colunas)
