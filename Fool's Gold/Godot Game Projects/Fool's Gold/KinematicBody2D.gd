extends KinematicBody2D

export (int) var speed = 50

var velocity = Vector2()
onready var sprite = $Sprite
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_d"):
		velocity.x += 1
		$Sprite.play("right_walk")
	if Input.is_action_pressed("ui_a"):
		velocity.x -= 1
		$Sprite.play("left_walk")
	if Input.is_action_pressed("ui_s"):
		velocity.y += 1
		$Sprite.play("down_walk")
	if Input.is_action_pressed("ui_w"):
		velocity.y -= 1
		$Sprite.play("up_walk")
	velocity = velocity.normalized() * speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
