extends AnimatedSprite2D

func _ready() -> void:
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	updateCamera(Global.CurrentCamera)
	
func updateCamera(view : String) -> void :
	if view == "Basement":
		$"/root/Main game/camera/Cam_Basement".visible = true
		if Global.WalkerMalePoss == "Basement":
			if Global.WalkerFemalePoss =="Basement" :
				if Global.HiderPoss == "Basement" :
					$"../Cam_Basement".animation = "Basement MFH"
				else :
					$"../Cam_Basement".animation = "Basement MF"
			else :
				if Global.HiderPoss == "Basement" :
					$"../Cam_Basement".animation = "Basement MH"
				else :
					$"../Cam_Basement".animation = "Basement M"
		else :
			if Global.WalkerFemalePoss == "Basement" :
				if Global.HiderPoss == "Basement":
					$"../Cam_Basement".animation = "Basement FH"
				else :
					$"../Cam_Basement".animation = "Basement F"
			else :
				if Global.HiderPoss == "Basement" :
					$"../Cam_Basement".animation = "Basement H"
				else :
					$"../Cam_Basement".animation = "Basement 0"
	else :
		if view == "Closed" :
			$"/root/Main game/camera/Cam_Basement".visible = false
		else :
			$"/root/Main game/camera/Cam_Basement".visible = false
