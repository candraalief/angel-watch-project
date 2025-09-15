extends AnimatedSprite2D

func _ready() -> void:
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	updateCamera(Global.CurrentCamera)
	
func updateCamera(view : String) -> void :
	if view == "Left_Hall":
		$"/root/Main game/camera/Cam_Left_Hall".visible = true
		if Global.WalkerMalePoss == "Left_Hall":
			if Global.WalkerFemalePoss =="Left_Hall" :
				if Global.HiderPoss == "Left_Hall" :
					$"../Cam_Left_Hall".animation = "Left_Hall MFH"
				else :
					$"../Cam_Left_Hall".animation = "Left_Hall MF"
			else :
				if Global.HiderPoss == "Left_Hall" :
					$"../Cam_Left_Hall".animation = "Left_Hall MH"
				else :
					$"../Cam_Left_Hall".animation = "Left_Hall M"
		else :
			if Global.WalkerFemalePoss == "Left_Hall" :
				if Global.HiderPoss == "Left_Hall":
					$"../Cam_Left_Hall".animation = "Left_Hall FH"
				else :
					$"../Cam_Left_Hall".animation = "Left_Hall F"
			else :
				if Global.HiderPoss == "Left_Hall" :
					$"../Cam_Left_Hall".animation = "Left_Hall H"
				else :
					$"../Cam_Left_Hall".animation = "Left_Hall 0"
	else :
		if view == "Closed" :
			$"/root/Main game/camera/Cam_Left_Hall".visible = false
		else :
			$"/root/Main game/camera/Cam_Left_Hall".visible = false
