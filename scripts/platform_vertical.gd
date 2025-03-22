extends Node2D

@onready var tween = get_tree().create_tween()
var start_position: Vector2

func _ready():
	start_position = position  # Memorizza la posizione iniziale
	move_platform()

func move_platform():
	tween.tween_property(self, "position:x", start_position.x +60, 1).set_trans(Tween.TRANS_LINEAR)
	tween.tween_property(self, "position:x", start_position.x, 1).set_trans(Tween.TRANS_LINEAR)
	tween.set_loops()  # Ripete all'infinito
