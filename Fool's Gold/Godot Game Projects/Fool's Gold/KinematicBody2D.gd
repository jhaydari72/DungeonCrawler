extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_d"):
		velocity.x += 1
	if Input.is_action_pressed("ui_a"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_s"):
		velocity.y += 1
	if Input.is_action_pressed("ui_w"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
