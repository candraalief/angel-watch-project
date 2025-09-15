extends Camera2D

var screenwidth = ProjectSettings.get_setting("display/window/size/viewport_width")

@export var scrollarea : int
@export var scrollspeed : float
@export var officesprite : Sprite2D
var officewidth : int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(screenwidth)
	if officesprite :
		officewidth = officesprite.texture.get_width()*officesprite.scale.x
	make_current()
	global_position.x = (officewidth - screenwidth)/2
	print(officewidth)
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_local_mouse_position().x < scrollarea:
		global_position.x -= scrollspeed * delta
	if get_local_mouse_position().x > screenwidth - scrollarea :
		global_position.x += scrollspeed* delta
	if officesprite :
		if global_position.x < officesprite.position.x :
			global_position.x = officesprite.position.x
		if global_position.x + screenwidth > officewidth :
			global_position.x = officewidth - screenwidth
				
