extends Label

var bags = 0

func _ready():
	text = String(bags) 


func _on_obj_bag_collected():
	bags = bags + 5
	_ready()
	
	
