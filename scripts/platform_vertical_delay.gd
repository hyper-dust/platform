extends Node2D

var start_position: Vector2

func _ready():
	start_position = position
	await get_tree().create_timer(1.0).timeout  # ⏱ aspetta 2 secondi
	move_platform()

func move_platform():
	var tween = get_tree().create_tween()
	tween.set_loops()
	tween.tween_property(self, "position:y", start_position.y, 0.9).set_trans(Tween.TRANS_LINEAR)
	tween.tween_property(self, "position:y", start_position.y + 70, 0.9).set_trans(Tween.TRANS_LINEAR)
