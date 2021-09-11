extends Node2D

var velocidade = 200

func _ready():
	pass

func _process(delta):
	position.x -= velocidade * delta
	
	if position.x < -50:
		print("destruir coluna")
