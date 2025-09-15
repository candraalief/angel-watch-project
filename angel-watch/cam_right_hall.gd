extends AnimatedSprite2D

func _ready() -> void:
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	updateCamera(Global.CurrentCamera)
	
func updateCamera(view : String) -> void :
	if view == "Right_Hall":
		$"/root/Main game/camera/Cam_Right_Hall".visible = true
		if Global.WalkerMalePoss == "Right_Hall":
			if Global.WalkerFemalePoss =="Right_Hall" :
				if Global.HiderPoss == "Right_Hall" :
					$"../Cam_Right_Hall".animation = "Right_Hall MFH"
				else :
					$"../Cam_Right_Hall".animation = "Right_Hall MF"
			else :
				if Global.HiderPoss == "Right_Hall" :
					$"../Cam_Right_Hall".animation = "Right_Hall MH"
				else :
					$"../Cam_Right_Hall".animation = "Right_Hall M"
		else :
			if Global.WalkerFemalePoss == "Right_Hall" :
				if Global.HiderPoss == "Right_Hall":
					$"../Cam_Right_Hall".animation = "Right_Hall FH"
				else :
					$"../Cam_Right_Hall".animation = "Right_Hall F"
			else :
				if Global.HiderPoss == "Right_Hall" :
					$"../Cam_Right_Hall".animation = "Right_Hall H"
				else :
					$"../Cam_Right_Hall".animation = "Right_Hall 0"
	else :
		if view == "Closed" :
			$"/root/Main game/camera/Cam_Right_Hall".visible = false
		else :
			$"/root/Main game/camera/Cam_Right_Hall".visible = false
