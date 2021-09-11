extends Node2D

var VELOCIDADE = 200
const VALOR = 30

func _ready():
	pass

func _process(delta):
	position.x -= VELOCIDADE * delta
	
	if position.x < -50:
		Dados.pontuar(VALOR)
		queue_free() # elimina a intancia

# quando colide nas colunas
func _on_colunas_body_entered(body):
	Dados.reset_score()
	get_tree().reload_current_scene()
