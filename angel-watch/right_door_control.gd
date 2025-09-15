extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_r_d_open_button_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.camUp == false :
		if event is InputEventMouseButton and event.pressed:
			if Global.CurrentRightDoor == "Closed" :
				Animation_Open_RD()

func _on_r_d_closed_button_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.camUp == false :
		if event is InputEventMouseButton and event.pressed:
			if Global.CurrentRightDoor == "Open" :
				Animation_Closed_RD()
			
func Animation_Open_RD () :
	Global.CurrentRightDoor = "Open"
	$"/root/Main game/Right_Door".play("Open")
	$"/root/Main game/Right_Door/Light_Button".play("Open")

func Animation_Closed_RD () :
	Global.CurrentRightDoor = "Closed"
	$"/root/Main game/Right_Door".play("Closed")
	$"/root/Main game/Right_Door/Light_Button".play("Closed")

	
