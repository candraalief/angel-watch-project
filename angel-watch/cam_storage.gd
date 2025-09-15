extends AnimatedSprite2D

func _ready() -> void:
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	updateCamera(Global.CurrentCamera)
	
func updateCamera(view : String) -> void :
	if view == "Storage":
		$"/root/Main game/camera/Cam_Storage".visible = true
		if Global.WalkerMalePoss == "Storage":
			if Global.WalkerFemalePoss =="Storage" :
				if Global.HiderPoss == "Storage" :
					$"../Cam_Storage".animation = "Storage MFH"
				else :
					$"../Cam_Storage".animation = "Storage MF"
			else :
				if Global.HiderPoss == "Storage" :
					$"../Cam_Storage".animation = "Storage MH"
				else :
					$"../Cam_Storage".animation = "Storage M"
		else :
			if Global.WalkerFemalePoss == "Storage" :
				if Global.HiderPoss == "Storage":
					$"../Cam_Storage".animation = "Storage FH"
				else :
					$"../Cam_Storage".animation = "Storage F"
			else :
				if Global.HiderPoss == "Storage" :
					$"../Cam_Storage".animation = "Storage H"
				else :
					$"../Cam_Storage".animation = "Storage 0"
	else :
		if view == "Closed" :
			$"/root/Main game/camera/Cam_Storage".visible = false
		else :
			$"/root/Main game/camera/Cam_Storage".visible = false
