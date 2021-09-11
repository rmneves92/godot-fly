extends RigidBody2D

export var jump_force = 600
var impulse = false
onready var anim = get_node("anim")

func _ready():
	anim.connect("animation_finished", self, "finished")
	pass

func _physics_process(delta):
	if impulse:
		anim.play("impulse")
	else: 
		anim.play("fly")
	
	if Input.is_action_just_pressed("touch"):
		on_touch()

func on_touch():
	anim.frame = 0
	impulse = true
	apply_impulse(Vector2(0,0),Vector2(0,-jump_force))

func finished():
	impulse = false
