extends Node2D
@onready var animation_player : AnimationPlayer = $AnimationPlayer

@onready var ray_cast_2d: RayCast2D = $RayCast2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var is_empty : bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not is_empty and ray_cast_2d.is_colliding():
		empty()


func empty():
	print('animo!!!')
	animation_player.play('unboxing')
	is_empty = true
