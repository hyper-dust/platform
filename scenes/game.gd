extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Engine.max_fps = 60
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(Engine.get_frames_per_second())
