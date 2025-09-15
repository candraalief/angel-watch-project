extends AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../Map".visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.CurrentCamera =="Closed" :
		$"/root/Main game/GUI/Map".visible = false
	else :
		$"/root/Main game/GUI/Map".visible = true


func _on_buton_main_hall_pressed() -> void:
	Global.CurrentCamera = "Main_Hall"
	print("CurrentCamera =", Global.CurrentCamera)

func _on_button_exhibition_hall_pressed() -> void:
	Global.CurrentCamera = "Exhibition_Hall"
	print("CurrentCamera =", Global.CurrentCamera) # Replace with function body.


func _on_button_back_stage_pressed() -> void:
	Global.CurrentCamera = "Back_Stage"
	print("CurrentCamera =", Global.CurrentCamera)

func _on_button_storage_pressed() -> void:
	Global.CurrentCamera = "Storage"
	print("CurrentCamera =", Global.CurrentCamera)

func _on_button_basement_pressed() -> void:
	Global.CurrentCamera = "Basement"
	print("CurrentCamera =", Global.CurrentCamera)


func _on_button_left_hall_pressed() -> void:
	Global.CurrentCamera = "Left_Hall"
	print("CurrentCamera =", Global.CurrentCamera)
	
func _on_button_right_hall_pressed() -> void:
	Global.CurrentCamera = "Right_Hall"
	print("CurrentCamera =", Global.CurrentCamera)

func _on_button_v_1_pressed() -> void:
	Global.CurrentCamera = "V1"
	print("CurrentCamera =", Global.CurrentCamera)


func _on_button_v_2_pressed() -> void:
	Global.CurrentCamera = "V2"
	print("CurrentCamera =", Global.CurrentCamera)


func _on_button_v_3_pressed() -> void:
	Global.CurrentCamera = "V3"
	print("CurrentCamera =", Global.CurrentCamera)
