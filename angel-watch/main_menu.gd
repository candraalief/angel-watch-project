extends Node2D

var button_type = null
# Called when the node enters the scene tree for the first time.
func _on_start_pressed() -> void:
	button_type = "start"
	$Fade_Transition.show()
	$Fade_Transition/Fade_Timer.start()
	$Fade_Transition/AnimationPlayer.play("Fade_In")

func _on_quit_pressed() -> void:
	get_tree().quit()# Replace with function body.


func _on_fade_timer_timeout() -> void:
	if button_type == "start":
		get_tree().change_scene_to_file("res://main_game.tscn")
