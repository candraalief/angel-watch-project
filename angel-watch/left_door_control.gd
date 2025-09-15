extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_l_d_open_button_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.camUp == false :
		if event is InputEventMouseButton and event.pressed:
			if Global.CurrentLeftDoor == "Closed" :
				Animation_Open_LD() # Replace with function body.


func _on_l_d_closed_button_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.camUp == false :
		if event is InputEventMouseButton and event.pressed:
			if Global.CurrentLeftDoor == "Open" :
				Animation_Closed_LD()
			
func Animation_Open_LD () :
	Global.CurrentLeftDoor = "Open"
	$"/root/Main game/Left_Door".play("Open")
	$"/root/Main game/Left_Door/Light_Button".play("Open")
func Animation_Closed_LD () :
	Global.CurrentLeftDoor = "Closed"
	$"/root/Main game/Left_Door".play("Closed")
	$"/root/Main game/Left_Door/Light_Button".play("Closed")
