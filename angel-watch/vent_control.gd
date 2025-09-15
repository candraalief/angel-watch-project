extends Area2D

var is_mouse_inside := false

func _process(delta: float) -> void:
	pass

func _ready() -> void:
	Global.CurrentVent = "Open"
	play_idle_animation()
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)

func _on_mouse_entered():
	is_mouse_inside = true
	play_hover_animation()

func _on_mouse_exited():
	is_mouse_inside = false
	play_idle_animation()

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.camUp == false :
		if event is InputEventMouseButton and event.pressed:
			# Toggle state
			if Global.CurrentVent == "Closed" :
				Global.CurrentVent = "Open" 
			else :
				Global.CurrentVent = "Closed"
			# Play click animation
			play_click_animation()
			
			if is_mouse_inside == true :
				await get_tree().create_timer(0.05).timeout
				play_hover_animation()
		
# Fungsi animasi
func play_hover_animation():
	if Global.CurrentVent == "Closed":
		$"/root/Main game/Vent".animation = "Choose_Open"
	else:
		$"/root/Main game/Vent".animation = "Choose_Closed"

func play_click_animation():
	if Global.CurrentVent == "Closed":
		$"/root/Main game/Vent".animation = "Closed"
	else:
		$"/root/Main game/Vent".animation = "Open"

func play_idle_animation():
	play_click_animation()
