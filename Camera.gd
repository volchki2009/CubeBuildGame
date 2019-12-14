extends Camera

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var parent_node = self.get_tree().get_root().get_node('root')
onready var cube_brush = load("res://cube_brush.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("ui_left"):
		self.rotate_y(0.1)
		print('camera rotation is = ' + str(self.rotation_degrees))
	if Input.is_action_pressed("ui_right"):
		self.rotate_y(-0.1)
		print('camera rotation is = ' + str(self.rotation_degrees))
	if Input.is_action_pressed("ui_up"):
		self.translate(Vector3(0, 0, -0.1))
		print('camera translations is = ' + str(self.translation))
	if Input.is_action_pressed("ui_down"):
		self.translate(Vector3(0, 0, 0.1))
	if Input.is_action_pressed("fly_down"):
		self.translate(Vector3(0, -0.1, 0))
	if Input.is_action_pressed("fly_up"):
		self.translate(Vector3(0, 0.1, 0))
		print('camera translations is = ' + str(self.translation))
	if Input.is_action_pressed("spawn_block"):
		self.spawn_cube_at_me()

func spawn_cube_at_me():
	var new_cube = cube_brush.instance()
	new_cube.translate(self.translation)
	parent_node.add_child(new_cube)
	
	
	
		
		
		
		
		
		
		