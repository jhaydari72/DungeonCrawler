extends Area2D

signal bagsCollected

func _ready():
	pass 
	


func _on_obj_bag_body_entered(body):
	if body.name == "obj_player": 
		$AnimationPlayer.play("bounce")
		
		$Timer.start()


func _on_Timer_timeout():
	emit_signal("bagsCollected")
	queue_free()
	
