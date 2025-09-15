extends AnimatedSprite2D

func _ready() -> void:
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	updateCamera(Global.CurrentCamera)
	
func updateCamera(view : String) -> void :
	if view == "Main_Hall":
		$"/root/Main game/camera/Cam_Main_Hall".visible = true
		if Global.WatcherPoss == "Main_Hall" :
			if Global.WalkerMalePoss == "Main_Hall":
				if Global.WalkerFemalePoss =="Main_Hall" :
					if Global.HiderPoss == "Main_Hall" :
						$"../Cam_Main_Hall".animation = "Main_Hall WMFH"
					else :
						$"../Cam_Main_Hall".animation = "Main_Hall WMF"
				else :
					if Global.HiderPoss == "Main_Hall" :
						$"../Cam_Main_Hall".animation = "Main_Hall WMH"
					else :
						$"../Cam_Main_Hall".animation = "Main_Hall WM"
			else :
				if Global.WalkerFemalePoss == "Main_Hall" :
					if Global.HiderPoss == "Main_Hall":
						$"../Cam_Main_Hall".animation = "Main_Hall WFH"
					else :
						$"../Cam_Main_Hall".animation = "Main_Hall WF"
				else :
					if Global.HiderPoss == "Main_Hall" :
						$"../Cam_Main_Hall".animation = "Main_Hall WH"
					else :
						$"../Cam_Main_Hall".animation = "Main_Hall W"
		else :
			$"../Cam_Main_Hall".animation = "Main_Hall 0"
	else :
		if view == "Closed" :
			$"/root/Main game/camera/Cam_Main_Hall".visible = false
		else :
			$"/root/Main game/camera/Cam_Main_Hall".visible = false
