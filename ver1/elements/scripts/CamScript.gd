extends Camera2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	GameManager.mousePos = position
	if(Input.is_action_pressed("down")): position.y += 525 * delta
	elif(Input.is_action_pressed("up")): position.y -= 525 * delta
	if(Input.is_action_pressed("left")): position.x -= 525 * delta
	elif(Input.is_action_pressed("right")): position.x += 525 * delta
	if(Input.is_action_pressed("zoomin")): 
		zoom.y += 5 * delta
		zoom.x += 5 * delta
		$Node2D.scale.x += 5 * delta
		$Node2D.scale.y += 5 * delta
	elif(Input.is_action_pressed("zoomout")): 
		zoom.y -= 5 * delta
		zoom.x -= 5 * delta
		$Node2D.scale.x -= 5 * delta
		$Node2D.scale.y -= 5 * delta
	
	pass
