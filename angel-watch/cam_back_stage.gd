extends AnimatedSprite2D

func _ready() -> void:
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	updateCamera(Global.CurrentCamera)
	
func updateCamera(view : String) -> void :
	if view == "Back_Stage":
		$"/root/Main game/camera/Cam_Back_Stage".visible = true
		if Global.WalkerMalePoss == "Back_Stage":
			if Global.WalkerFemalePoss =="Back_Stage" :
				if Global.HiderPoss == "Back_Stage" :
					$"../Cam_Back_Stage".animation = "Back_Stage MFH"
				else :
					$"../Cam_Back_Stage".animation = "Back_Stage MF"
			else :
				if Global.HiderPoss == "Back_Stage" :
					$"../Cam_Back_Stage".animation = "Back_Stage MH"
				else :
					$"../Cam_Back_Stage".animation = "Back_Stage M"
		else :
			if Global.WalkerFemalePoss == "Back_Stage" :
				if Global.HiderPoss == "Back_Stage":
					$"../Cam_Back_Stage".animation = "Back_Stage FH"
				else :
					$"../Cam_Back_Stage".animation = "Back_Stage F"
			else :
				if Global.HiderPoss == "Back_Stage" :
					$"../Cam_Back_Stage".animation = "Back_Stage H"
				else :
					$"../Cam_Back_Stage".animation = "Back_Stage 0"
	else :
		if view == "Closed" :
			$"/root/Main game/camera/Cam_Back_Stage".visible = false
		else :
			$"/root/Main game/camera/Cam_Back_Stage".visible = false
