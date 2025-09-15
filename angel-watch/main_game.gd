extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Fade_Transition.visible = true
	$Fade_Transition/Fade_Animation.play("Fade_Out")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_fade_animation_animation_finished(anim_name: StringName) -> void:
	$Fade_Transition.visible = false
