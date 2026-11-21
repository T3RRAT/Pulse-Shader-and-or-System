extends Node3D


@onready var scanner_Mesh = $"Meshs/CSGCombiner3D/Scanner CSG"
@onready var scanner_squared = $"Meshs/CSGCombiner3D/Scanner CSG/CSGSphere3D"


var zeroScale = Vector2(0,0)
var allTheScale

var scanning = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("Test Action"):
		scanning = !scanning
		print("Clicked")
		
	
	
	
	# Ways to Impliment:
		# move csg spheres along curves of the mesh
		# lerp a csg sphere up with subtraction or intersection
		# 
	
	# scale is up and moves the csg along curves of the mesh????
	
	if scanning == true:
		scanner_Mesh.radius = lerp(scanner_Mesh.radius, 40.0, delta * 1)
		scanner_squared.radius = lerp(scanner_squared.radius, scanner_Mesh.radius + 1, delta * 0.9)
	else:
		scanner_Mesh.radius = 5
		scanner_squared.radius = 4
	
	
	
	
