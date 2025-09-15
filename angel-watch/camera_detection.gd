extends Area2D
var camanimation = "default"
var input_on_cooldown := false
var cooldown_duration := 0.5 # seconds

func _ready() -> void:
	$"../Panel".visible=false
	mouse_entered.connect(mouseEntered)
	mouse_exited.connect(mouseExited)

func mouseEntered() -> void:
		Global.camUp = !Global.camUp
		if Global.camUp == true:
			print("true")
			$"../Panel".visible = true
			camanimation = "default"
			$"../Panel".play(camanimation)

		else:
			print("false")
			$"../Panel".visible = true
			camanimation = "backwards"
			Global.CurrentCamera = "Closed"
			$"/root/Main game/camera".visible = false
			$"/root/Main game/camera/Static".visible = false
			$"/root/Main game/camera/Scanline".visible = false
			$"../Panel".play(camanimation)
		
func mouseExited() -> void:
	pass


func _on_panel_animation_finished() -> void:
	if camanimation == "default" :
		$"/root/Main game/camera".visible = true
		$"/root/Main game/camera/Static".visible = true
		$"/root/Main game/camera/Scanline".visible = true

		Global.CurrentCamera = "Main_Hall"
		print("global current =", Global.CurrentCamera)
		$"../Panel".visible = false
		
	if camanimation == "backwards" :
		print("global current =", Global.CurrentCamera)
		$"../Panel".visible = false
