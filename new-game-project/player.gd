extends CharacterBody2D

var speed : int

func _ready():
	speed = 300
	
func get_input():
	#keyboard input
	var input_dir = Input.get_vector("left", "right", "up", "down")
	velocity = input_dir * speed

func _physics_process(_delta):
	#player movement
	get_input()
	move_and_slide()
#Hello Again
