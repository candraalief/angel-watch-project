extends AnimatedSprite2D

func _ready() -> void:
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	updateCamera(Global.CurrentCamera)
	
	
func updateCamera(view : String) -> void :
	#Exhibition Hall
	if view == "Exhibition_Hall":
		$"/root/Main game/camera/Cam_Exhibition_Hall".visible = true
		if Global.WalkerMalePoss == "Exhibition_Hall":
			if Global.WalkerFemalePoss =="Exhibition_Hall" :
				if Global.HiderPoss == "Exhibition_Hall" :
					$"../Cam_Exhibition_Hall".animation = "Exhibition_Hall MFH"
				else :
					$"../Cam_Exhibition_Hall".animation = "Exhibition_Hall MF"
			else :
				if Global.HiderPoss == "Exhibition_Hall" :
					$"../Cam_Exhibition_Hall".animation = "Exhibition_Hall MH"
				else :
					$"../Cam_Exhibition_Hall".animation = "Exhibition_Hall M"
		else :
			if Global.WalkerFemalePoss == "Exhibition_Hall" :
				if Global.HiderPoss == "Exhibition_Hall":
					$"../Cam_Exhibition_Hall".animation = "Exhibition_Hall FH"
				else :
					$"../Cam_Exhibition_Hall".animation = "Exhibition_Hall F"
			else :
				if Global.HiderPoss == "Exhibition_Hall" :
					$"../Cam_Exhibition_Hall".animation = "Exhibition_Hall H"
				else :
					$"../Cam_Exhibition_Hall".animation = "Exhibition_Hall 0"
	else :
		if view == "Closed" :
			$"/root/Main game/camera/Cam_Exhibition_Hall".visible = false
		else :
			$"/root/Main game/camera/Cam_Exhibition_Hall".visible = false
